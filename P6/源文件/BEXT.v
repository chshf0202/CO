`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:14:33 11/27/2022 
// Design Name: 
// Module Name:    BEXT 
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
module BEXT(
    input [31:0] in,
    input [31:0] A,
	 input [2:0] BEXTOp,
    output [31:0] out
    );
	wire [31:0] lh;
	wire [31:0] lb;
	assign lh = (A[1] == 1'b0) ? {{16{in[15]}},in[15:0]} :
					(A[1] == 1'b1) ? {{16{in[31]}},in[31:16]} :
					in;
	assign lb = (A[1:0] == 2'b00) ? {{24{in[7]}},in[7:0]} :
					(A[1:0] == 2'b01) ? {{24{in[15]}},in[15:8]} :
					(A[1:0] == 2'b10) ? {{24{in[23]}},in[23:16]} :
					(A[1:0] == 2'b11) ? {{24{in[31]}},in[31:24]} :
					in;
	assign out = (BEXTOp == 3'b001) ? lh :
					(BEXTOp == 3'b010) ? lb :
					in;
endmodule
