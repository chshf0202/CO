`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:51:59 11/27/2022 
// Design Name: 
// Module Name:    BE 
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
module BE(
    input [31:0] A,
	 input [31:0] WD,
    input [1:0] BEmod,
    output [3:0] byteen,
	 output [31:0] wd
    );
	wire [3:0] swen;
	wire [3:0] shen;
	wire [3:0] sben;
	assign swen = 4'b1111;
	assign shen = (A[1] == 1'b0) ? 4'b0011 :
					(A[1] == 1'b1) ? 4'b1100 :
					4'b0000;
	assign sben = (A[1:0] == 2'b00) ? 4'b0001 :
					(A[1:0] == 2'b01) ? 4'b0010 :
					(A[1:0] == 2'b10) ? 4'b0100 :
					(A[1:0] == 2'b11) ? 4'b1000 :
					4'b0000;
	assign byteen = (BEmod == 2'b01) ? swen :
						(BEmod == 2'b10) ? shen :
						(BEmod == 2'b11) ? sben :
						4'b0000;
	wire [31:0] swwd;
	wire [31:0] shwd;
	wire [31:0] sbwd;
	assign swwd = WD;
	assign shwd = (A[1] == 1'b0) ? {{16{1'b0}},WD[15:0]} :
					(A[1] == 1'b1) ? {WD[15:0],{16{1'b0}}} :
					WD;
	assign sbwd = (A[1:0] == 2'b00) ? {{24{1'b0}},WD[7:0]} :
					(A[1:0] == 2'b01) ? {{16{1'b0}},WD[7:0],{8{1'b0}}} :
					(A[1:0] == 2'b10) ? {{8{1'b0}},WD[7:0],{16{1'b0}}} :
					(A[1:0] == 2'b11) ? {WD[7:0],{24{1'b0}}} :
					WD;
	assign wd = (BEmod == 2'b01) ? swwd :
						(BEmod == 2'b10) ? shwd :
						(BEmod == 2'b11) ? sbwd :
						WD;
endmodule
