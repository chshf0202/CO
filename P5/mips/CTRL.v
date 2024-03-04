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
    input [5:0] opcode,
    input [5:0] funct,
    output BEQ,
    output JAL,
    output JR,
    output [1:0] WDSel,
    output RFen,
    output DMen,
    output [2:0] ALUOp,
    output BSel,
    output [1:0] EXTOp,
    output [1:0] A3Sel,
    output [2:0] rsTuse,
    output [2:0] rtTuse,
    output [2:0] Tnew
    );
	wire ADD;
	wire SUB;
	wire ORI;
	wire LW;
	wire SW;
	wire LUI;
	wire NOP;
	assign ADD = (opcode == 6'b000000 && funct == 6'b100000) ? 1'b1 : 1'b0;
	assign SUB = (opcode == 6'b000000 && funct == 6'b100010) ? 1'b1 : 1'b0;
	assign ORI = (opcode == 6'b001101) ? 1'b1 : 1'b0;
	assign LW = (opcode == 6'b100011) ? 1'b1 : 1'b0;
	assign SW = (opcode == 6'b101011) ? 1'b1 : 1'b0;
	assign LUI = (opcode == 6'b001111) ? 1'b1 : 1'b0;
	assign NOP = (opcode == 6'b000000 && funct == 6'b000000) ? 1'b1 : 1'b0;
	assign BEQ = (opcode == 6'b000100) ? 1'b1 : 1'b0;
	assign JAL = (opcode == 6'b000011) ? 1'b1 : 1'b0;
	assign JR = (opcode == 6'b000000 && funct == 6'b001000) ? 1'b1 : 1'b0;
	assign A3Sel = (ORI || LUI ||LW) ? 2'b01 :
						(JAL) ? 2'b10 :
						2'b00;
	assign WDSel = (LW) ? 2'b01 :
						(JAL) ? 2'b10 :
						2'b00;
	assign BSel = (ORI || LW || SW || LUI) ? 1'b1 : 1'b0;
	assign EXTOp = (LW || SW) ? 2'b01 :
						(LUI) ? 2'b10 :
						2'b00;
	assign ALUOp = (ADD) ? 3'b000 :
						(SUB) ? 3'b001 :
						(ORI) ? 3'b010 :
						(LW) ? 3'b011 :
						(SW) ? 3'b100 :
						(LUI) ? 3'b101 :
						3'b000;
	assign RFen = (ADD || SUB || ORI || LW || LUI || JAL) ? 1'b1 : 1'b0;
	assign DMen = (SW) ? 1'b1 : 1'b0;
	assign rsTuse = (BEQ || JR) ? 3'b000 :
						(ADD || SUB || ORI || LW || SW || LUI) ? 3'b001 :
						3'b101;
	assign rtTuse = (BEQ) ? 3'b000 :
						(ADD || SUB) ? 3'b001 :
						(SW) ? 3'b010 :
						3'b101;
	assign Tnew = (LW || JAL) ? 3'b011 :
						(ADD || SUB || ORI || LUI) ? 3'b010 :
						3'b000;
endmodule
