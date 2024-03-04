`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:56:20 10/10/2022 
// Design Name: 
// Module Name:    cpu_checker 
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
module cpu_checker(
    input clk,
    input reset,
    input [7:0] char,
    output [1:0] format_type
    );
	reg [7:0] state;
	initial begin
		state <= 0;
	end
	always@(posedge clk)begin
		if(reset)begin
			state <= 0;
		end else begin
			case(state)
				0 : begin
					if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				1 : begin
					if(char >= "0" && char <= "9")begin
						state <= 2;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				2 : begin
					if(char >= "0" && char <= "9")begin
						state <= 3;
					end else if(char == "@")begin
						state <= 6;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				3 : begin
					if(char >= "0" && char <= "9")begin
						state <= 4;
					end else if(char == "@")begin
						state <= 6;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				4 : begin
					if(char >= "0" && char <= "9")begin
						state <= 5;
					end else if(char == "@")begin
						state <= 6;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				5 : begin
					if(char == "@")begin
						state <= 6;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				6 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 7;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				7 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 8;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				8 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 9;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				9 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 10;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				10 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 11;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				11 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 12;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				12 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 13;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				13 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 14;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				14 : begin
					if(char == ":")begin
						state <= 15;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				15 : begin
					if(char == " ")begin
						state <= 15;
					end else if(char == "$")begin
						state <= 16;
					end else if(char == "*")begin
						state <= 32;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				16 : begin
					if(char >= "0" && char <= "9")begin
						state <= 17;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				17 : begin
					if(char >= "0" && char <= "9")begin
						state <= 18;
					end else if(char == " ")begin
						state <= 21;
					end else if(char == "<")begin
						state <= 22;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				18 : begin
					if(char >= "0" && char <= "9")begin
						state <= 19;
					end else if(char == " ")begin
						state <= 21;
					end else if(char == "<")begin
						state <= 22;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				19 : begin
					if(char >= "0" && char <= "9")begin
						state <= 20;
					end else if(char == " ")begin
						state <= 21;
					end else if(char == "<")begin
						state <= 22;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				20 : begin
					if(char == " ")begin
						state <= 21;
					end else if(char == "<")begin
						state <= 22;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				21 : begin
					if(char == " ")begin
						state <= 21;
					end else if(char == "<")begin
						state <= 22;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				22 : begin
					if(char == "=")begin
						state <= 23;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				23 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 24;
					end else if(char == " ")begin
						state <= 23;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				24 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 25;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				25 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 26;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				26 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 27;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				27 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 28;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				28 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 29;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				29 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 30;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				30 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 31;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				31 : begin
					if(char == "#")begin
						state <= 52;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				32 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 33;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				33 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 34;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				34 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 35;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				35 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 36;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				36 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 37;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				37 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 38;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				38 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 39;
					end else begin
						state <= 0;
					end
				end
				39 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 40;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				40 : begin
					if(char == " ")begin
						state <= 41;
					end else if(char == "<")begin
						state <= 42;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				41 : begin
					if(char == " ")begin
						state <= 41;
					end else if(char == "<")begin
						state <= 42;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				42 : begin
					if(char == "=")begin
						state <= 43;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				43 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 44;
					end else if(char == " ")begin
						state <= 43;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				44 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 45;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				45 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 46;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				46 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 47;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				47 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 48;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				48 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 49;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				49 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 50;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				50 : begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						state <= 51;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				51 : begin
					if(char == "#")begin
						state <= 53;
					end else if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				52 : begin
					if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
				53 : begin
					if(char == "^")begin
						state <= 1;
					end else begin
						state <= 0;
					end
				end
			endcase
		end
	end
	assign format_type = (state == 52) ? 2'b01 :
								(state == 53) ? 2'b10 :
													 2'b00;
endmodule
