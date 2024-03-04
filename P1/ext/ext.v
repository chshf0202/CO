`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:03:13 10/07/2022 
// Design Name: 
// Module Name:    ext 
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
module ext(
    input [15:0] imm,
    input [1:0] EOp,
    output [31:0] ext
    );
	wire [31:0] t1;
	wire [31:0] t2;
	wire [31:0] t3;
	assign t1 = {{16{imm[15]}},imm[15:0]};
	assign t2 = {{16{0}},imm[15:0]};
	assign t3 = {imm[15:0],{16{0}}};
	assign ext = (EOp == 2'b00) ? t1 :
					(EOp == 2'b01) ? t2 :
					(EOp == 2'b10) ? t3 :
					(EOp == 2'b11) ? t2 << 2'b10 :
					0;
endmodule
