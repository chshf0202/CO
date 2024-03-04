`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:56:47 10/10/2022 
// Design Name: 
// Module Name:    id_fsm 
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
module id_fsm(
    input [7:0] char,
    input clk,
    output out
    );
	reg [1:0] state;
	initial begin
		state <= 0;
	end
	always@(posedge clk)begin
		case(state)
			0 : begin
				if((char >= "a" && char <= "z")||(char >= "A" && char <= "Z"))begin
					state <= 1;
				end else begin
					state <= 0;
				end
			end
			1 : begin
				if((char >= "a" && char <= "z")||(char >= "A" && char <= "Z"))begin
					state <= 1;
				end else if(char >= "0" && char <= "9")begin
					state <= 2;
				end else begin
					state <= 0;
				end
			end
			2 : begin
				if((char >= "a" && char <= "z")||(char >= "A" && char <= "Z"))begin
					state <= 1;
				end else if(char >= "0" && char <= "9")begin
					state <= 2;
				end else begin
					state <= 0;
				end
			end
		endcase
	end
	assign out = (state == 2) ? 1 : 0;
endmodule
