`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:16 10/07/2022 
// Design Name: 
// Module Name:    gray 
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
`define s0 3'b000
`define s1 3'b001
`define s2 3'b011
`define s3 3'b010
`define s4 3'b110
`define s5 3'b111
`define s6 3'b101
`define s7 3'b100
module gray(
    input Clk,
    input Reset,
    input En,
    output reg [2:0] Output,
    output reg Overflow
    );
	initial begin
		Output <= `s0;
		Overflow <= 1'b0;
	end
	always@(posedge Clk) begin
		if(Reset) begin
			Output <= `s0;
			Overflow <= 1'b0;
		end else if(En) begin
			case(Output)
				`s0 : begin
					Output <= `s1;
				end
				`s1 : begin
					Output <= `s2;
				end
				`s2 : begin
					Output <= `s3;
				end
				`s3 : begin
					Output <= `s4;
				end
				`s4 : begin
					Output <= `s5;
				end
				`s5 : begin
					Output <= `s6;
				end
				`s6 : begin
					Output <= `s7;
				end
				`s7 : begin
					Output <= `s0;
					Overflow <= 1'b1;
				end
			endcase
		end
	end
endmodule
