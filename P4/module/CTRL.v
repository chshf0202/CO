`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:06:16 11/04/2022 
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
    output [1:0] WRSel,
    output [1:0] WDSel,
    output BSel,
    output [1:0] EXTOp,
    output [2:0] ALUOp,
    output RFWE,
    output DMWR
    );
	wire ADD = (opcode == 6'b000000 && funct == 6'b100000) ? 1'b1 : 1'b0;
	wire SUB = (opcode == 6'b000000 && funct == 6'b100010) ? 1'b1 : 1'b0;
	wire ORI = (opcode == 6'b001101) ? 1'b1 : 1'b0;
	wire LW = (opcode == 6'b100011) ? 1'b1 : 1'b0;
	wire SW = (opcode == 6'b101011) ? 1'b1 : 1'b0;
	wire LUI = (opcode == 6'b001111) ? 1'b1 : 1'b0;
	wire NOP = (opcode == 6'b000000 && funct == 6'b000000) ? 1'b1 : 1'b0;
	assign BEQ = (opcode == 6'b000100) ? 1'b1 : 1'b0;
	assign JAL = (opcode == 6'b000011) ? 1'b1 : 1'b0;
	assign JR = (opcode == 6'b000000 && funct == 6'b001000) ? 1'b1 : 1'b0;
	assign WRSel = (ADD || SUB) ? 2'b01 :
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
	assign RFWE = (ADD || SUB || ORI || LW || LUI || JAL) ? 1'b1 : 1'b0;
	assign DMWR = (SW) ? 1'b1 : 1'b0;
endmodule
