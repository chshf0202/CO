`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:39:59 10/06/2022 
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
    input [3:0] inA,
    input [3:0] inB,
    input [1:0] inC,
    input [1:0] op,
    input [4:0] ans
    );
	assign ans = (op == 2'b00) ? $signed($signed(inA) >>> inC) :
					(op == 2'b01) ? inA >> inC :
					(op == 2'b10) ? inA - inB :
					inA + inB;

endmodule
