`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:54:22 11/13/2022 
// Design Name: 
// Module Name:    mips 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mips(
    input clk,                    // 时钟信号
    input reset,                  // 同步复位信号
//new
    input interrupt,              // 外部中断信号
    output [31:0] macroscopic_pc, // 宏观 PC

    output [31:0] i_inst_addr,    // IM 读取地址（取指 PC）
    input  [31:0] i_inst_rdata,   // IM 读取数据

    output [31:0] m_data_addr,    // DM 读写地址
    input  [31:0] m_data_rdata,   // DM 读取数据
    output [31:0] m_data_wdata,   // DM 待写入数据
    output [3 :0] m_data_byteen,  // DM 字节使能信号
//new
    output [31:0] m_int_addr,     // 中断发生器待写入地址
    output [3 :0] m_int_byteen,   // 中断发生器字节使能信号

    output [31:0] m_inst_addr,    // M 级 PC

    output w_grf_we,              // GRF 写使能信号
    output [4 :0] w_grf_addr,     // GRF 待写入寄存器编号
    output [31:0] w_grf_wdata,    // GRF 待写入数据

    output [31:0] w_inst_addr     // W 级 PC
);
////////////////////////////////////stage F///////////////////////////////////////
	wire Req;
	wire [31:0] DI;
	wire stallPC;
	wire [31:0] DO;
	wire ERETD;
	wire [31:0] EPCOut;
PC pc (
    .clk(clk), 
    .reset(reset), 
    .DI(DI), 
    .stallPC(stallPC), 
    .DO(DO),
	 .Req(Req),
	 .ERETD(ERETD),
	 .EPCOut(EPCOut)
    );
	wire [31:0] InsF;
//IM
	assign i_inst_addr = (ERETD) ? EPCOut :
								DO;
	assign InsF = i_inst_rdata;
	wire Zero;
	wire [1:0] Br;
	wire [15:0] imm16;
	wire JAL;
	wire [25:0] imm26;
	wire JR;
	wire [31:0] ra;
	wire [31:0] PC8D;
	wire [31:0] PC8F;
	wire BDInF;
NPC npc (
    .PC(i_inst_addr), 
    .Zero(Zero), 
    .Br(Br), 
    .imm16(imm16), 
    .JAL(JAL), 
    .imm26(imm26), 
    .JR(JR), 
    .ra(ra), 
	 .PC8D(PC8D),
    .NPC(DI), 
    .PC8F(PC8F),
	 .BDIn(BDInF),
	 .Req(Req),
	 .ERETD(ERETD),
	 .EPCOut(EPCOut)
    );
//Exception F
	wire [4:0] ExcF;
	wire [31:0] InsF_Exc; 
	assign ExcF = ((i_inst_addr % 4 != 0)||(i_inst_addr < 32'h3000)||(i_inst_addr > 32'h6ffc)) ? 5'd4 :
						5'd0;
	assign InsF_Exc = (ExcF != 5'd0) ?  32'd0 : InsF;
////////////////////////////////////stage D///////////////////////////////////////
	wire stallD;
	wire [31:0] InsD;
	wire [4:0] ExcFD;
	wire BDInD;
DReg dreg (
    .clk(clk), 
    .stallD(stallD),
	 .Req(Req),
    .InsF(InsF_Exc), 
    .PC8F(PC8F), 
	 .reset(reset),
    .InsD(InsD), 
    .PC8D(PC8D),
	 .ExcF(ExcF),
	 .ExcFD(ExcFD),
	 .BDInF(BDInF),
	 .BDInD(BDInD)
    );
	wire [1:0] WDSelD;
	wire RFenD;
	wire FWSelD;
	wire [1:0] BEmodD;
	wire [2:0] BEXTOpD;
	wire [3:0] ALUOpD;
	wire HLSelD;
	wire [3:0] startD;
	wire BSelD;
	wire [1:0] EXTOp;
	wire [1:0] A3Sel;
	wire [2:0] rsTuse;
	wire [2:0] rtTuse;
	wire [2:0] TnewD;
	wire [4:0] ExcCtrl;
	wire LOADD;
	wire STORED;
	wire MFC0D;
	wire MTC0D;
	wire ArithD;
CTRL ctrl (
	 .InsD(InsD),
    .opcode(InsD[31:26]), 
    .funct(InsD[5:0]), 
    .Br(Br), 
    .JAL(JAL), 
    .JR(JR), 
    .WDSel(WDSelD), 
    .RFen(RFenD), 
    .FWSel(FWSelD),
	 .BEmod(BEmodD),
	 .BEXTOp(BEXTOpD),
    .ALUOp(ALUOpD), 
	 .HLSel(HLSelD),
	 .start(startD),
    .BSel(BSelD), 
    .EXTOp(EXTOp), 
    .A3Sel(A3Sel), 
    .rsTuse(rsTuse), 
    .rtTuse(rtTuse), 
    .Tnew(TnewD),
	 .ExcCtrl(ExcCtrl),
	 .LOAD(LOADD),
	 .STORE(STORED),
	 .MFC0(MFC0D),
	 .MTC0(MTC0D),
	 .ERET(ERETD),
	 .Arith(ArithD)
    );
	wire RFenW;
	wire [4:0] A1D;
	wire [4:0] A2D;
	wire [4:0] A3D;
	wire [4:0] A3W;
	wire [31:0] WD;
	wire [31:0] PC8W;
	wire [31:0] grfRD1;
	wire [31:0] grfRD2;
GRF grf (
    .clk(clk), 
    .reset(reset), 
    .RFen(RFenW), 
    .A1(A1D), 
    .A2(A2D), 
    .A3(A3W), 
    .WD(WD), 
    .RD1(grfRD1), 
    .RD2(grfRD2)
    );
	wire [31:0] EXTOutD;
EXT ext (
    .imm16(imm16), 
    .EXTOp(EXTOp), 
    .EXTOut(EXTOutD)
    );
	assign A1D = InsD[25:21];
	assign A2D = InsD[20:16];
	wire [31:0] RD1D;
	wire [31:0] RD2D;
	wire [1:0] RD1DSel;
	wire [1:0] RD2DSel;
	wire [31:0] FWM;
	assign RD1D = (RD1DSel == 2'b10) ? FWM :
						(RD1DSel == 2'b01) ? WD :
						grfRD1;
	assign RD2D = (RD2DSel == 2'b10) ? FWM :
						(RD2DSel == 2'b01) ? WD :
						grfRD2;
	assign Zero = (RD1D == RD2D) ? 1'b1 : 1'b0;
	assign ra = RD1D;
	assign imm16 = InsD[15:0];
	assign imm26 = InsD[25:0];
	assign A3D = (A3Sel == 2'b10) ? 5'h1f :
						(A3Sel == 2'b01) ? InsD[20:16] :
						InsD[15:11];
//Exception D
	wire [4:0] ExcD;
	assign ExcD = (ExcFD != 5'd0) ? ExcFD :
						(ExcCtrl != 5'd0) ? ExcCtrl :
						5'd0;
	wire [4:0] ACP0D;
	assign ACP0D = (MFC0D || MTC0D) ? InsD[15:11] : 5'd0;
////////////////////////////////////stage E///////////////////////////////////////
	wire clrE;
   wire [1:0] WDSelE;
   wire RFenE;
   wire FWSelE;
	wire [1:0] BEmodE;
	wire [2:0] BEXTOpE;
	wire [3:0] ALUOpE;
	wire HLSelE;
	wire [3:0] startE;
   wire BSelE;
   wire [31:0] RD1E;
   wire [31:0] RD2E;
   wire [31:0] EXTOutE;
   wire [4:0] A1E;
   wire [4:0] A2E;
   wire [2:0] TnewE;
   wire [4:0] A3E;
   wire [31:0] PC8E;
	wire [4:0] ExcDE;
	wire LOADE;
	wire STOREE;
	wire MTC0E;
	wire ERETE;
	wire [4:0] ACP0E;
	wire ArithE;
EReg ereg (
    .WDSelD(WDSelD), 
    .RFenD(RFenD), 
    .FWSelD(FWSelD),
	 .BEmodD(BEmodD),
	 .BEXTOpD(BEXTOpD),
    .ALUOpD(ALUOpD), 
	 .HLSelD(HLSelD),
	 .startD(startD),
    .BSelD(BSelD), 
    .RD1D(RD1D), 
    .RD2D(RD2D), 
    .EXTOutD(EXTOutD), 
    .A1D(A1D), 
    .A2D(A2D), 
    .TnewD(TnewD), 
    .A3D(A3D), 
    .PC8D(PC8D), 
    .clk(clk), 
    .clrE(clrE),
	 .reset(reset),
	 .Req(Req),
    .WDSelE(WDSelE), 
    .RFenE(RFenE), 
    .FWSelE(FWSelE),
	 .BEmodE(BEmodE),
	 .BEXTOpE(BEXTOpE),
    .ALUOpE(ALUOpE), 
	 .HLSelE(HLSelE),
	 .startE(startE),
    .BSelE(BSelE), 
    .RD1E(RD1E), 
    .RD2E(RD2E), 
    .EXTOutE(EXTOutE), 
    .A1E(A1E), 
    .A2E(A2E), 
    .TnewE(TnewE), 
    .A3E(A3E), 
    .PC8E(PC8E),
	 .ExcD(ExcD),
	 .ExcDE(ExcDE),
	 .LOADD(LOADD),
	 .STORED(STORED),
	 .LOADE(LOADE),
	 .STOREE(STOREE),
	 .BDInD(BDInD),
	 .BDInE(BDInE),
	 .MTC0D(MTC0D),
	 .MTC0E(MTC0E),
	 .ERETD(ERETD),
	 .ERETE(ERETE),
	 .ACP0D(ACP0D),
	 .ACP0E(ACP0E),
	 .ArithD(ArithD),
	 .ArithE(ArithE)
    );
	wire [31:0] SA;
	wire [31:0] SB;
	wire [1:0] RD1ESel;
	wire [1:0] RD2ESel;
	wire [31:0] RD2SE;
	assign SA = (RD1ESel == 2'b10) ? FWM :
					(RD1ESel == 2'b01) ? WD :
					RD1E;
	assign RD2SE = (RD2ESel == 2'b10) ? FWM :
						(RD2ESel == 2'b01) ? WD :
						RD2E;
	assign SB = (BSelE == 1'b1) ? EXTOutE :
					RD2SE;
	wire [31:0] ALUOutE;
	wire [4:0] ExcALU;
ALU alu (
    .SA(SA), 
    .SB(SB), 
    .ALUOp(ALUOpE), 
    .ALUOut(ALUOutE),
	 .ExcALU(ExcALU),
	 .LOAD(LOADE),
	 .STORE(STOREE),
	 .Arith(ArithE)
    );
	wire [31:0] HI;
	wire [31:0] LO;
	wire busy;
	wire [3:0] startE_Req;
	assign startE_Req = (Req) ? 4'b0000 : startE;
MD md (
    .clk(clk), 
	 .reset(reset),
    .SA(SA), 
    .SB(SB), 
    .start(startE_Req), 
    .LO(LO), 
    .HI(HI), 
    .busy(busy)
    );
	wire [31:0] HLE;
	assign HLE = (HLSelE == 1'b1) ? HI : 
					LO;
//Exception E
	wire [4:0] ExcE;
	assign ExcE = (ExcDE != 5'd0) ? ExcDE :
						(ExcALU != 5'd0) ? ExcALU :
						5'd0;
////////////////////////////////////stage M///////////////////////////////////////
	wire [1:0] WDSelM;
   wire RFenM;
	wire FWSelM;
	wire [1:0] BEmodM;
	wire [2:0] BEXTOpM;
	wire [31:0] ALUOutM;
   wire [31:0] RD2SM;
	wire [31:0] HLM;
   wire [4:0] A1M;
   wire [4:0] A2M;
   wire [2:0] TnewM;
   wire [4:0] A3M;
   wire [31:0] PC8M;
	wire [4:0] ExcEM;
	wire BDInM;
	wire MTC0M;
	wire ERETM;
	wire [4:0] ACP0M;
MReg mreg (
    .WDSelE(WDSelE), 
    .RFenE(RFenE), 
    .FWSelE(FWSelE),
	 .BEmodE(BEmodE),
	 .BEXTOpE(BEXTOpE),
    .ALUOutE(ALUOutE), 
    .RD2SE(RD2SE), 
	 .HLE(HLE),
    .A1E(A1E), 
    .A2E(A2E), 
    .TnewE(TnewE), 
    .A3E(A3E), 
    .PC8E(PC8E), 
    .clk(clk), 
	 .reset(reset),
	 .Req(Req),
    .WDSelM(WDSelM), 
    .RFenM(RFenM), 
    .FWSelM(FWSelM),
	 .BEmodM(BEmodM),
	 .BEXTOpM(BEXTOpM),
    .ALUOutM(ALUOutM), 
    .RD2SM(RD2SM), 
	 .HLM(HLM),
    .A1M(A1M), 
    .A2M(A2M), 
    .TnewM(TnewM), 
	 .A3M(A3M),
    .PC8M(PC8M),
	 .ExcE(ExcE),
	 .ExcEM(ExcEM),
	 .BDInE(BDInE),
	 .BDInM(BDInM),
	 .MTC0E(MTC0E),
	 .MTC0M(MTC0M),
	 .ERETE(ERETE),
	 .ERETM(ERETM),
	 .ACP0E(ACP0E),
	 .ACP0M(ACP0M)
    );
//DM
	wire [31:0] DMWD;
	wire [3:0] BEbyteen;
	wire [31:0] BEwd;
	wire [4:0] ExcBE;
	wire [5:0] HWInt;
BE be (
    .A(ALUOutM), 
	 .WD(DMWD),
    .BEmod(BEmodM), 
    .byteen(BEbyteen),
	 .wd(BEwd),
	 .Req(Req),
	 .ExcBE(ExcBE)
    );
	wire [31:0] DMRDM;
	wire [4:0] ExcBEXT;
	wire [31:0] PrRD;
BEXT bext (
    .in(PrRD), 
    .A(ALUOutM), 
    .BEXTOp(BEXTOpM), 
    .out(DMRDM),
	 .ExcBEXT(ExcBEXT)
    );
	wire DMWDSel;
	assign DMWD = (DMWDSel == 1'b1) ? WD :
						RD2SM;
	assign FWM = (FWSelM == 1'b1) ? HLM :
						ALUOutM;
	assign m_inst_addr = PC8M - 32'd8;
//Exception M
	assign macroscopic_pc = m_inst_addr;
	wire [4:0] ExcM;
	assign ExcM = (ExcEM != 5'd0) ? ExcEM :
						(ExcBE != 5'd0) ? ExcBE :
						(ExcBEXT != 5'd0) ? ExcBEXT :
						5'd0;
	wire [4:0] ExcCodeIn;
	wire [31:0] CP0OutM;
	wire TCI0;
	wire TCI1;
	wire [31:0] VPC;
	assign ExcCodeIn = (interrupt == 1'b1 || TCI1 == 1'b1 || TCI0 == 1'b1) ? 5'd0 :
							(ExcM != 5'd0) ? ExcM :
							5'd0;
	assign HWInt = {3'b000,interrupt,TCI1,TCI0};
	assign VPC = PC8M - 32'd8;
CP0 cp0 (
    .clk(clk), 
    .reset(reset), 
    .en(MTC0M), 
    .CP0Add(ACP0M), 
    .CP0In(DMWD), 
    .CP0Out(CP0OutM), 
    .VPC(VPC), 
    .BDIn(BDInM), 
    .ExcCodeIn(ExcCodeIn), 
    .HWInt(HWInt), 
    .EXLClr(ERETM), 
    .EPCOut(EPCOut), 
    .Req(Req)
    );
//Bridge
	wire [31:0] DMAddr;
	wire [31:0] TC0Addr;
	wire [31:0] TC1Addr;
	wire [3:0] DMByteen;
	wire TC0WE;
	wire TC1WE;
	wire [31:0] DevWD; 
	wire [31:0] TC0RD;
	wire [31:0] TC1RD;
Bridge bridge (
    .A(ALUOutM), 
    .PrByteen(BEbyteen), 
    .PrWD(BEwd), 
    .PrRD(PrRD), 
    .DMAddr(DMAddr), 
    .TC0Addr(TC0Addr), 
    .TC1Addr(TC1Addr), 
    .IGAddr(m_int_addr), 
    .DMByteen(DMByteen), 
    .TC0WE(TC0WE), 
    .TC1WE(TC1WE), 
    .IGByteen(m_int_byteen), 
    .DevWD(DevWD), 
    .DMRD(m_data_rdata), 
    .TC0RD(TC0RD), 
    .TC1RD(TC1RD)
    );
//Device
	assign m_data_byteen = DMByteen;
	assign m_data_addr = DMAddr;
	assign m_data_wdata = DevWD;
TC tc0 (
    .clk(clk), 
    .reset(reset), 
    .Addr(TC0Addr[31:2]), 
    .WE(TC0WE), 
    .Din(DevWD), 
    .Dout(TC0RD),
    .IRQ(TCI0)
    );
TC tc1 (
    .clk(clk), 
    .reset(reset), 
    .Addr(TC1Addr[31:2]), 
    .WE(TC1WE), 
    .Din(DevWD), 
    .Dout(TC1RD), 
    .IRQ(TCI1)
    );
////////////////////////////////////stage W///////////////////////////////////////
	wire [1:0] WDSelW;
   wire [31:0] FWW;
   wire [31:0] DMRDW;
	wire [31:0] CP0OutW;
WReg wreg (
    .WDSelM(WDSelM), 
    .RFenM(RFenM), 
    .FWM(FWM), 
    .DMRDM(DMRDM), 
    .A3M(A3M), 
    .PC8M(PC8M), 
    .clk(clk), 
	 .reset(reset),
	 .Req(Req),
    .WDSelW(WDSelW), 
    .RFenW(RFenW), 
    .FWW(FWW), 
    .DMRDW(DMRDW), 
    .A3W(A3W), 
    .PC8W(PC8W),
	 .CP0OutM(CP0OutM),
	 .CP0OutW(CP0OutW)
    );
	assign WD = (WDSelW == 2'b11) ? CP0OutW :
					(WDSelW == 2'b10) ? PC8W :
					(WDSelW == 2'b01) ? DMRDW :
					FWW;
	assign w_grf_we = RFenW;
	assign w_grf_wdata = WD;
	assign w_grf_addr = A3W;
	assign w_inst_addr = PC8W - 32'd8;
//////////////////////////////////////PIPC////////////////////////////////////////
PIPC pipc (
    .A1D(A1D), 
    .A1E(A1E), 
    .A1M(A1M), 
    .A2D(A2D), 
    .A2E(A2E), 
    .A2M(A2M), 
    .A3E(A3E), 
    .A3M(A3M), 
    .A3W(A3W), 
    .rsTuse(rsTuse), 
    .rtTuse(rtTuse), 
    .TnewE(TnewE), 
    .TnewM(TnewM), 
    .RFenE(RFenE), 
    .RFenM(RFenM), 
    .RFenW(RFenW), 
	 .startD(startD),
	 .startE(startE),
	 .busy(busy),
	 .ERETD(ERETD),
	 .MTC0E(MTC0E),
	 .MTC0M(MTC0M),
    .RD1DSel(RD1DSel), 
    .RD2DSel(RD2DSel), 
    .RD1ESel(RD1ESel), 
    .RD2ESel(RD2ESel), 
    .DMWDSel(DMWDSel), 
    .stallPC(stallPC), 
    .stallD(stallD), 
    .clrE(clrE)
    );
endmodule
