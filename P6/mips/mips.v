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
    input clk,
    input reset,
    input [31:0] i_inst_rdata,
    input [31:0] m_data_rdata,
    output [31:0] i_inst_addr,
    output [31:0] m_data_addr,
    output [31:0] m_data_wdata,
    output [3 :0] m_data_byteen,
    output [31:0] m_inst_addr,
    output w_grf_we,
    output [4:0] w_grf_addr,
    output [31:0] w_grf_wdata,
    output [31:0] w_inst_addr
);
////////////////////////////////////stage F///////////////////////////////////////
	wire [31:0] DI;
	wire stallPC;
	wire [31:0] DO;
PC pc (
    .clk(clk), 
    .reset(reset), 
    .DI(DI), 
    .stallPC(stallPC), 
    .DO(DO)
    );
	wire [31:0] InsF;
//IM
	assign i_inst_addr = DO;
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
NPC npc (
    .PC(DO), 
    .Zero(Zero), 
    .Br(Br), 
    .imm16(imm16), 
    .JAL(JAL), 
    .imm26(imm26), 
    .JR(JR), 
    .ra(ra), 
	 .PC8D(PC8D),
    .NPC(DI), 
    .PC8F(PC8F)
    );
////////////////////////////////////stage D///////////////////////////////////////
	wire stallD;
	wire [31:0] InsD;
DReg dreg (
    .clk(clk), 
    .stallD(stallD), 
    .InsF(InsF), 
    .PC8F(PC8F), 
	 .reset(reset),
    .InsD(InsD), 
    .PC8D(PC8D)
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
CTRL ctrl (
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
    .Tnew(TnewD)
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
    .PC8E(PC8E)
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
ALU alu (
    .SA(SA), 
    .SB(SB), 
    .ALUOp(ALUOpE), 
    .ALUOut(ALUOutE)
    );
	wire [31:0] HI;
	wire [31:0] LO;
	wire busy;
MD md (
    .clk(clk), 
	 .reset(reset),
    .SA(SA), 
    .SB(SB), 
    .start(startE), 
    .LO(LO), 
    .HI(HI), 
    .busy(busy)
    );
	wire [31:0] HLE;
	assign HLE = (HLSelE == 1'b1) ? HI : 
					LO;
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
    .PC8M(PC8M)
    );
//DM
	wire [31:0] DMWD;
	wire [3:0] BEbyteen;
	wire [31:0] BEwd;
BE be (
    .A(ALUOutM), 
	 .WD(DMWD),
    .BEmod(BEmodM), 
    .byteen(BEbyteen),
	 .wd(BEwd)
    );
	wire [31:0] DMRDM;
BEXT bext (
    .in(m_data_rdata), 
    .A(ALUOutM), 
    .BEXTOp(BEXTOpM), 
    .out(DMRDM)
    );
	wire DMWDSel;
	assign DMWD = (DMWDSel == 1'b1) ? WD :
						RD2SM;
	assign m_data_byteen = BEbyteen;
	assign m_data_addr = ALUOutM;
	assign m_data_wdata = BEwd;
	assign FWM = (FWSelM == 1'b1) ? HLM :
						ALUOutM;
	assign m_inst_addr = PC8M - 32'd8;
////////////////////////////////////stage W///////////////////////////////////////
	wire [1:0] WDSelW;
   wire [31:0] FWW;
   wire [31:0] DMRDW;
WReg wreg (
    .WDSelM(WDSelM), 
    .RFenM(RFenM), 
    .FWM(FWM), 
    .DMRDM(DMRDM), 
    .A3M(A3M), 
    .PC8M(PC8M), 
    .clk(clk), 
	 .reset(reset),
    .WDSelW(WDSelW), 
    .RFenW(RFenW), 
    .FWW(FWW), 
    .DMRDW(DMRDW), 
    .A3W(A3W), 
    .PC8W(PC8W)
    );
	assign WD = (WDSelW == 2'b10) ? PC8W :
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
