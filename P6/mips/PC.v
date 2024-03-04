`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:55:32 11/13/2022 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input clk,
    input reset,
    input [31:0] DI,
    input stallPC,
    output [31:0] DO
    );
	reg [31:0] pcreg;
	initial begin
		pcreg <= 32'h3000;
	end
	always@(posedge clk)begin
		if(reset)begin
			pcreg <= 32'h3000;
		end else if(stallPC)begin
			//nothing
		end else begin
			pcreg <= DI;
		end
	end
	assign DO = pcreg;
endmodule
