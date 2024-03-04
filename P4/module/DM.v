`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:45:03 11/04/2022 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input CLK,
	 input Reset,
    input WR,
    input [31:0] A,
    input [31:0] WD,
	 input [31:0] PC,
    output [31:0] RD
    );
	reg [31:0] DMReg [0:3071];
	wire [11:0] addr;
	integer i;
	initial begin
		for(i = 0;i < 3072;i = i + 1)begin
			DMReg[i] <= 0;
		end
	end
	always@(posedge CLK)begin
		if(Reset)begin
			for(i = 0;i < 3072;i = i + 1)begin
				DMReg[i] <= 0;
			end
		end else if(WR)begin
			DMReg[addr] <= WD;
			$display("@%h: *%h <= %h", PC, A, WD);
		end
	end
	assign addr = A[13:2];
	assign RD = DMReg[addr];
endmodule
