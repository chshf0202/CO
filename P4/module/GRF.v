`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:15:53 11/04/2022 
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
    input CLK,
    input Reset,
    input WE,
    input [4:0] A1,
    input [4:0] A2,
    input [4:0] A3,
    input [31:0] WD,
	 input [31:0] PC,
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
	always@(posedge CLK)begin
		if(Reset)begin
			for (i = 0;i < 32;i = i + 1) begin
				RF[i] <= 0;
			end
		end else if(WE)begin
			if(A3 > 0)begin
				RF[A3] <= WD;
			end
			$display("@%h: $%d <= %h", PC, A3, WD);
		end
	end
	assign RD1 = RF[A1];
	assign RD2 = RF[A2];
endmodule
