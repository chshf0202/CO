`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:48:35 11/27/2022 
// Design Name: 
// Module Name:    MD 
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
module MD(
    input clk,
	 input reset,
    input [31:0] SA,
    input [31:0] SB,
    input [3:0] start,
    output [31:0] LO,
    output [31:0] HI,
    output busy
    );
	reg [3:0] count;
	reg [31:0] HIreg;
	reg [31:0] LOreg;
	wire [63:0] SAsign;
	wire [63:0] SBsign;
	wire [63:0] mult;
	assign SAsign = {{32{SA[31]}},SA};
	assign SBsign = {{32{SB[31]}},SB};
	assign mult = SAsign * SBsign;
	wire [63:0] SAzero;
	wire [63:0] SBzero;
	wire [63:0] multu;
	assign SAzero = {{32{1'b0}},SA};
	assign SBzero = {{32{1'b0}},SB};
	assign multu = SAzero * SBzero;
	wire [31:0] div;
	wire [31:0] mod;
	assign div = $signed(SA) / $signed(SB);
	assign mod = $signed(SA) % $signed(SB);
	wire [31:0] divu;
	wire [31:0] modu;
	assign divu = SA / SB;
	assign modu = SA % SB;
	initial begin
		count <= 4'd0;
		HIreg <= 32'd0;
		LOreg <= 32'd0;
	end
	always@(posedge clk)begin
		if(reset)begin
			count <= 4'd0;
			HIreg <= 32'd0;
			LOreg <= 32'd0;
		end else if((|start)== 1'b1)begin
			case(start)
				4'b0001:begin
					count <= 4'd5;
					HIreg <= mult[63:32];
					LOreg <= mult[31:0];
				end
				4'b0010:begin
					count <= 4'd5;
					HIreg <= multu[63:32];
					LOreg <= multu[31:0];
				end
				4'b0011:begin
					count <= 4'd10;
					HIreg <= mod;
					LOreg <= div;
				end
				4'b0100:begin
					count <= 4'd10;
					HIreg <= modu;
					LOreg <= divu;
				end
				4'b0101:begin
					//nothing
				end
				4'b0110:begin
					//nothing
				end
				4'b0111:begin
					HIreg <= SA;
				end
				4'b1000:begin
					LOreg <= SA;
				end
			endcase
		end else begin
			if(count > 4'd0)begin
				count <= count - 1;
			end
		end
	end
	assign HI = HIreg;
	assign LO = LOreg;
	assign busy = (count > 4'd0) ? 1'b1 : 1'b0;
endmodule
