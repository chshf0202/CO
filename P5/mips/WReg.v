`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:20:08 11/13/2022 
// Design Name: 
// Module Name:    WReg 
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
module WReg(
    input [1:0] WDSelM,
    input RFenM,
    input [31:0] ALUOutM,
    input [31:0] DMRDM,
    input [4:0] A3M,
    input [31:0] PC8M,
    input clk,
	 input reset,
    output [1:0] WDSelW,
    output RFenW,
    output [31:0] ALUOutW,
    output [31:0] DMRDW,
    output [4:0] A3W,
    output [31:0] PC8W
    );
	reg [1:0] WDSelreg;
   reg RFenreg;
   reg [31:0] ALUOutreg;
	reg [31:0] DMRDreg;
   reg [4:0] A3reg;
   reg [31:0] PC8reg;
	initial begin
		WDSelreg <= 2'd0;
		RFenreg <= 1'd0;
		ALUOutreg <= 32'd0;
		DMRDreg <= 32'd0;
		A3reg <= 5'd0;
		PC8reg <= 32'd0;
	end
	always@(posedge clk)begin
		if(reset)begin
			WDSelreg <= 2'd0;
			RFenreg <= 1'd0;
			ALUOutreg <= 32'd0;
			DMRDreg <= 32'd0;
			A3reg <= 5'd0;
			PC8reg <= 32'd0;
		end else begin
			WDSelreg <= WDSelM;
			RFenreg <= RFenM;
			ALUOutreg <= ALUOutM;
			DMRDreg <= DMRDM;
			A3reg <= A3M;
			PC8reg <= PC8M;
		end
	end
	assign WDSelW = WDSelreg;
   assign RFenW = RFenreg;
   assign ALUOutW = ALUOutreg;
   assign DMRDW = DMRDreg;
   assign A3W = A3reg;
   assign PC8W = PC8reg;
endmodule
