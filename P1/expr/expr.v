`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:07:32 10/07/2022 
// Design Name: 
// Module Name:    expr 
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
`define s0 2'b00
`define s1 2'b01
`define s2 2'b10
`define s3 2'b11
module expr(
    input clk,
    input clr,
    input [7:0] in,
    output out
    );
	 reg [1:0] state;
	initial begin
		state <= `s0;
	end
	always@(posedge clk,posedge clr) begin
		if(clr) begin
			state <= `s0;
		end else begin
			case(state)
				`s0 : begin
					state <= (in >= 48 && in <= 57) ? `s1 : `s0;
				end
				`s1 : begin
					state <= (in >= 42 && in <= 43) ? `s2 : 
								(in >= 48 && in <= 57) ? `s3 : `s0;
				end
				`s2 : begin
					state <= (in >= 48 && in <= 57) ? `s1 :
								(in >= 42 && in <= 43) ? `s3 : `s0;
				end
				`s3 : begin
					state <= `s3;
				end
			endcase
		end
	end
	assign out = (state == `s1) ? 1'b1 : 1'b0;
endmodule
