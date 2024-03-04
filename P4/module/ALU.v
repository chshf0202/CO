`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:34:04 11/04/2022 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [31:0] SA,
    input [31:0] SB,
    input [2:0] ALUOp,
    output [31:0] ALUResult,
    output Zero
    );
	assign ALUResult = (ALUOp == 3'b000 || ALUOp == 3'b011 || ALUOp == 3'b100) ? SA + SB :
							(ALUOp == 3'b001) ? SA - SB :
							(ALUOp == 3'b010) ? SA | SB :
							(ALUOp == 3'b101) ? SB :
							0;
	assign Zero = (SA == SB) ? 1'b1 : 1'b0;
endmodule
