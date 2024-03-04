`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:11:23 11/13/2022 
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
    input clk,
    input reset,
    input DMen,
    input [31:0] A,
	 input [31:0] WD,
	 input [31:0] PC8,
    output [31:0] RD
    );
	reg [31:0] DMreg [0:3071];
	wire [11:0] addr;
	wire [31:0] PC;
	integer i;
	initial begin
		for(i = 0;i < 3072;i = i + 1)begin
			DMreg[i] <= 0;
		end
	end
	always@(posedge clk)begin
		if(reset)begin
			for(i = 0;i < 3072;i = i + 1)begin
				DMreg[i] <= 0;
			end
		end else if(DMen)begin
			DMreg[addr] <= WD;
			$display("%d@%h: *%h <= %h", $time, PC, A, WD);
		end
	end
	assign addr = A[13:2];
	assign RD = DMreg[addr];
	assign PC = PC8 - 32'd8;
endmodule
