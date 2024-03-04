`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:05:33 10/10/2022 
// Design Name: 
// Module Name:    code 
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
module code(
    input Clk,
    input Reset,
    input Slt,
    input En,
    output reg [63:0] Output0,
    output reg [63:0] Output1
    );
	 reg [63:0] t1;
	initial begin
		t1 <= 0;
		Output0 <= 0;
		Output1 <= 0;
	end
	always@(posedge Clk)begin
		if(Reset)begin
			Output0 <= 0;
			Output1 <= 0;
			t1 <= 0;
		end else if(En) begin
			case(Slt)
				0 : begin
					Output0 <= Output0 + 1;
				end
				1 : begin
					t1 <= t1 + 1;
				end
			endcase
			if(t1 == 3)begin
				Output1 <= Output1 + 1;
				t1 <= 0;
			end
		end
	end
endmodule
