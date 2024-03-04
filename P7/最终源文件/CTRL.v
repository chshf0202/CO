`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:34:20 11/13/2022 
// Design Name: 
// Module Name:    CTRL 
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
module CTRL(
    input [31:0] InsD,
	 input [5:0] opcode,
    input [5:0] funct,
    output [1:0] Br,
    output JAL,
    output JR,
    output [1:0] WDSel,
    output RFen,
    output FWSel,
	 output [1:0] BEmod,
	 output [2:0] BEXTOp,
    output [3:0] ALUOp,
	 output HLSel,
	 output [3:0] start,
    output BSel,
    output [1:0] EXTOp,
    output [1:0] A3Sel,
    output [2:0] rsTuse,
    output [2:0] rtTuse,
    output [2:0] Tnew,
	 output [4:0] ExcCtrl,
	 output LOAD,
	 output STORE,
	 output MFC0,
	 output MTC0,
	 output ERET,
	 output Arith
    );
	wire ADD;
	wire SUB;
	wire AND;
	wire OR;
	wire SLT;
	wire SLTU;
	wire ADDI;
	wire ANDI;
	wire ORI;
	wire LUI;
	wire LW;
	wire LH;
	wire LB;
	wire SW;
	wire SH;
	wire SB;
	wire MULT;
	wire MULTU;
	wire DIV;
	wire DIVU;
	wire MFHI;
	wire MFLO;
	wire MTHI;
	wire MTLO;
	wire NOP;
	assign ADD = (opcode == 6'b000000 && funct == 6'b100000) ? 1'b1 : 1'b0;
	assign SUB = (opcode == 6'b000000 && funct == 6'b100010) ? 1'b1 : 1'b0;
	assign AND = (opcode == 6'b000000 && funct == 6'b100100) ? 1'b1 : 1'b0;
	assign OR = (opcode == 6'b000000 && funct == 6'b100101) ? 1'b1 : 1'b0;
	assign SLT = (opcode == 6'b000000 && funct == 6'b101010) ? 1'b1 : 1'b0;
	assign SLTU = (opcode == 6'b000000 && funct == 6'b101011) ? 1'b1 : 1'b0;
	assign ADDI = (opcode == 6'b001000) ? 1'b1 : 1'b0;
	assign ANDI = (opcode == 6'b001100) ? 1'b1 : 1'b0;
	assign ORI = (opcode == 6'b001101) ? 1'b1 : 1'b0;
	assign LUI = (opcode == 6'b001111) ? 1'b1 : 1'b0;
	assign LW = (opcode == 6'b100011) ? 1'b1 : 1'b0;
	assign LH = (opcode == 6'b100001) ? 1'b1 : 1'b0;
	assign LB = (opcode == 6'b100000) ? 1'b1 : 1'b0;
	assign SW = (opcode == 6'b101011) ? 1'b1 : 1'b0;
	assign SH = (opcode == 6'b101001) ? 1'b1 : 1'b0;
	assign SB = (opcode == 6'b101000) ? 1'b1 : 1'b0;
	assign MULT = (opcode == 6'b000000 && funct == 6'b011000) ? 1'b1 : 1'b0;
	assign MULTU = (opcode == 6'b000000 && funct == 6'b011001) ? 1'b1 : 1'b0;
	assign DIV = (opcode == 6'b000000 && funct == 6'b011010) ? 1'b1 : 1'b0;
	assign DIVU = (opcode == 6'b000000 && funct == 6'b011011) ? 1'b1 : 1'b0;
	assign MFHI = (opcode == 6'b000000 && funct == 6'b010000) ? 1'b1 : 1'b0;
	assign MFLO = (opcode == 6'b000000 && funct == 6'b010010) ? 1'b1 : 1'b0;
	assign MTHI = (opcode == 6'b000000 && funct == 6'b010001) ? 1'b1 : 1'b0;
	assign MTLO = (opcode == 6'b000000 && funct == 6'b010011) ? 1'b1 : 1'b0;
	assign NOP = (opcode == 6'b000000 && funct == 6'b000000) ? 1'b1 : 1'b0;
	assign Br = (opcode == 6'b000100) ? 2'b01 :
					(opcode == 6'b000101) ? 2'b10 :
					2'b00;
	assign JAL = (opcode == 6'b000011) ? 1'b1 : 1'b0;
	assign JR = (opcode == 6'b000000 && funct == 6'b001000) ? 1'b1 : 1'b0;
//Exception
	assign MFC0 = (InsD[31:21] == 11'b01000000000) ? 1'b1 : 1'b0;
	assign MTC0 = (InsD[31:21] == 11'b01000000100) ? 1'b1 : 1'b0;
	assign SYSCALL = (opcode == 6'b000000 && funct == 6'b001100) ? 1'b1 : 1'b0;
	assign ERET = (opcode == 6'b010000 && funct == 6'b011000) ? 1'b1 : 1'b0;
	assign ExcCtrl = (SYSCALL) ? 5'd8 :
						(~(ADD || SUB || AND || OR || SLT || SLTU || ADDI || ANDI || ORI || LUI || LW || LH || LB ||
						SW || SH || SB || MULT || MULTU || DIV || DIVU || MFHI || MFLO || MTHI || MTLO || NOP || Br ||
						JAL || JR || MFC0 || MTC0 || ERET || SYSCALL)) ? 5'd10 : 
						5'd0;
	assign Arith = (ADD || ADDI || SUB) ? 1'b1 : 1'b0;
	assign LOAD = (LW || LH || LB) ? 1'b1 : 1'b0;
	assign STORE = (SW || SH || SB) ? 1'b1 : 1'b0;
	
	
	assign A3Sel = (ADDI || ANDI || ORI || LUI || LW || LH || LB || MFC0) ? 2'b01 :
						(JAL) ? 2'b10 :
						2'b00;
	assign EXTOp = (ADDI || LW || LH || LB || SW || SH || SB) ? 2'b01 :
						(LUI) ? 2'b10 :
						2'b00;
	assign BSel = (ADDI || ANDI || ORI || LUI || LW || LH || LB || SW || SH || SB) ? 1'b1 : 1'b0;
	assign HLSel = (MFHI) ? 1'b1 : 1'b0;
	assign start = (MULT) ? 4'b0001 :
						(MULTU) ? 4'b0010 :
						(DIV) ? 4'b0011 :
						(DIVU) ? 4'b0100 :
						(MFHI) ? 4'b0101 :
						(MFLO) ? 4'b0110 :
						(MTHI) ? 4'b0111 :
						(MTLO) ? 4'b1000 :
						4'b0000;
	assign ALUOp = (ADD || ADDI || LW || LH || LB || SW || SH || SB) ? 4'b0000 :
						(SUB) ? 4'b0001 :
						(AND || ANDI) ? 4'b0010 :
						(OR || ORI) ? 4'b0011 :
						(SLT) ? 4'b0100 :
						(SLTU) ? 4'b0101 :
						(LUI) ? 4'b0110 :
						4'b0000;
	assign BEXTOp = (LB) ? 3'b010 :
						(LH) ? 3'b001 :
						(LW) ? 3'b011 :
						3'b000;
	assign BEmod = (SB) ? 2'b11 :
						(SH) ? 2'b10 :
						(SW) ? 2'b01 :
						2'b00;
	assign FWSel = (MFHI || MFLO) ? 1'b1 : 1'b0;
	assign RFen = (ADD || SUB || AND || OR || SLT || SLTU || ADDI || ANDI || ORI ||
						LUI || LW || LH || LB || MFHI || MFLO || JAL || MFC0) ? 1'b1 :
						1'b0;
	assign WDSel = (MFC0) ? 2'b11 :
					 	(LW || LH || LB) ? 2'b01 :
						(JAL) ? 2'b10 :
						2'b00;
	assign rsTuse = ((Br == 2'b01)||(Br == 2'b10)|| JR) ? 3'b000 :
						(ADD || SUB || AND || OR || SLT || SLTU || ADDI || ANDI || ORI || LUI ||
						LW || LH || LB || SW || SH || SB || MULT || MULTU || DIV || DIVU || 
						MTHI || MTLO || JAL) ? 3'b001 :
						3'b101;
	assign rtTuse = ((Br == 2'b01)||(Br == 2'b10)) ? 3'b000 :
						(ADD || SUB || AND || OR || SLT || SLTU || MULT || MULTU || DIV || DIVU) ? 3'b001 :
						(SW || SH || SB || MTC0) ? 3'b010 :
						3'b101;
	assign Tnew = (LW || LH || LB || JAL || MFC0) ? 3'b011 :
						(ADD || SUB || AND || OR || SLT || SLTU || ADDI || ANDI || ORI || LUI ||
						MFHI || MFLO) ? 3'b010 :
						3'b000;
endmodule
