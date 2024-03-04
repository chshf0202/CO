`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:36:40 10/10/2022 
// Design Name: 
// Module Name:    BlockChecker 
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
module BlockChecker(
    input clk,
    input reset,
    input [7:0] in,
    output result
    );
	reg [3:0] state;
	reg [31:0] cb;
	reg [31:0] ce;
	reg flag;
	initial state <= 0;
	always@(posedge clk,posedge reset) begin
		if(reset) begin
			state <= 1;
			cb <= 0;
			ce <= 0;
		end else begin
			case(state)
				0 : begin
					case(in)
						" " : begin
							state <= 1;
						end
						default : begin
							state <= 0;
						end
					endcase
				end
				1 : begin
					case(in)
						"b" : begin
							state <= 2;
						end
						"B" : begin
							state <= 2;
						end
						"e" : begin
							state <= 7;
						end
						"E" : begin
							state <= 7;
						end
						" " : begin
							state <= 1;
						end
						default : begin
							state <= 0;
						end
					endcase
				end
				2 : begin
					case(in)
						"e" : begin
							state <= 3;
						end
						"E" : begin
							state <= 3;
						end
						" " : begin
							state <= 1;
						end
						default : begin
							state <= 0;
						end
					endcase
				end
				3 : begin
					case(in)
						"g" : begin
							state <= 4;
						end
						"G" : begin
							state <= 4;
						end
						" " : begin
							state <= 1;
						end
						default : begin
							state <= 0;
						end
					endcase
				end
				4 : begin
					case(in)
						"i" : begin
							state <= 5;
						end
						"I" : begin
							state <= 5;
						end
						" " : begin
							state <= 1;
						end
						default : begin
							state <= 0;
						end
					endcase
				end
				5 : begin
					case(in)
						"n" : begin
							state <= 6;
							cb <= cb + 1;
						end
						"N" : begin
							state <= 6;
							cb <= cb + 1;
						end
						" " : begin
							state <= 1;
						end
						default : begin
							state <= 0;
						end
					endcase
				end
				6 : begin
					case(in)
						" " : begin
							state <= 1;
						end
						default : begin
							state <= 0;
							cb <= cb - 1;
						end
					endcase
				end
				7 : begin
					case(in)
						"n" : begin
							state <= 8;
						end
						"N" : begin
							state <= 8;
						end
						" " : begin
							state <= 1;
						end
						default : begin
							state <= 0;
						end
					endcase
				end
				8 : begin
					case(in)
						"d" : begin
							state <= 9;
							if(cb > 0) begin
								cb <= cb - 1;
								flag <= 0;
							end else begin
								ce <= ce + 1;
								flag <= 1;
							end
						end
						"D" : begin
							state <= 9;
							if(cb > 0) begin
								cb <= cb - 1;
								flag <= 0;
							end else begin
								ce <= ce + 1;
								flag <= 1;
							end
						end
						" " : begin
							state <= 1;
						end
						default : begin
							state <= 0;
						end
					endcase
				end
				9 : begin
					case(in)
						" " : begin
							state <= 1;
						end
						default : begin
							state <= 0;
							if(flag == 0) begin
								cb <= cb + 1;
							end else begin
								ce <= ce - 1;
							end
						end
					endcase
				end
			endcase
		end
	end
	assign result = (cb == 0 && ce == 0) ? 1 : 0;
endmodule
