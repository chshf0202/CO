`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:24:08 11/13/2022 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
    input clk,
    input reset,
    input RFen,
    input [4:0] A1,
    input [4:0] A2,
    input [4:0] A3,
    input [31:0] WD,
    output [31:0] RD1,
    output [31:0] RD2
    );
	reg [31:0] RF [0:31];
	integer i;
	initial begin
		for (i = 0;i < 32;i = i + 1) begin
			RF[i] <= 0;
		end
	end
	always@(posedge clk)begin
		if(reset)begin
			for (i = 0;i < 32;i = i + 1) begin
				RF[i] <= 0;
			end
		end else if(RFen)begin
			if(A3 > 0)begin
				RF[A3] <= WD;
			end
		end
	end
	assign RD1 = RF[A1];
	assign RD2 = RF[A2];
endmodule
