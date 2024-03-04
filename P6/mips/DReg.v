`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:18:04 11/13/2022 
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
module DReg(
    input clk,
    input stallD,
    input [31:0] InsF,
    input [31:0] PC8F,
	 input reset,
    output [31:0] InsD,
	 output [31:0] PC8D
    );
	reg [31:0] Insreg;
	reg [31:0] PC8reg;
	initial begin
		Insreg <= 32'd0;
		PC8reg <= 32'd0;
	end
	always@(posedge clk)begin
		if(reset)begin
			Insreg <= 32'd0;
			PC8reg <= 32'd0;
		end
		else if(stallD)begin
			//nothing
		end else begin
			Insreg <= InsF;
			PC8reg <= PC8F;
		end
	end
	assign InsD = Insreg;
	assign PC8D = PC8reg;
endmodule
