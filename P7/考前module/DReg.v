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
	 input Req,
    input [31:0] InsF,
    input [31:0] PC8F,
	 input reset,
    output [31:0] InsD,
	 output [31:0] PC8D,
	 input [4:0] ExcF,
	 output [4:0] ExcFD,
	 input BDInF,
	 output BDInD
    );
	reg [31:0] Insreg;
	reg [31:0] PC8reg;
	reg [4:0] Excreg;
	reg BDInreg;
	initial begin
		Insreg <= 32'd0;
		PC8reg <= 32'h3000 + 32'd8;
		Excreg <= 5'd0;
		BDInreg <= 1'd0;
	end
	always@(posedge clk)begin
		if(reset || Req)begin
			Insreg <= 32'd0;
			PC8reg <= ((Req)? (32'h4180 + 32'd8) : (32'h3000 + 32'd8));
			Excreg <= 5'd0;
			BDInreg <= 1'd0;
		end else if(stallD)begin
			//nothing
		end else begin
			Insreg <= InsF;
			PC8reg <= PC8F;
			Excreg <= ExcF;
			BDInreg <= BDInF;
		end
	end
	assign InsD = Insreg;
	assign PC8D = PC8reg;
	assign ExcFD = Excreg;
	assign BDInD = BDInreg;
endmodule
