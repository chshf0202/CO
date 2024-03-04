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
    input [31:0] FWM,
    input [31:0] DMRDM,
    input [4:0] A3M,
    input [31:0] PC8M,
    input clk,
	 input reset,
	 input Req,
    output [1:0] WDSelW,
    output RFenW,
    output [31:0] FWW,
    output [31:0] DMRDW,
    output [4:0] A3W,
    output [31:0] PC8W,
	 input [31:0] CP0OutM,
	 output [31:0] CP0OutW
    );
	reg [1:0] WDSelreg;
   reg RFenreg;
   reg [31:0] FWreg;
	reg [31:0] DMRDreg;
   reg [4:0] A3reg;
   reg [31:0] PC8reg;
	reg [31:0] CP0Outreg;
	initial begin
		WDSelreg <= 2'd0;
		RFenreg <= 1'd0;
		FWreg <= 32'd0;
		DMRDreg <= 32'd0;
		A3reg <= 5'd0;
		PC8reg <= 32'd0;
		CP0Outreg <= 32'd0;
	end
	always@(posedge clk)begin
		if(reset || Req)begin
			WDSelreg <= 2'd0;
			RFenreg <= 1'd0;
			FWreg <= 32'd0;
			DMRDreg <= 32'd0;
			A3reg <= 5'd0;
			PC8reg <= 32'd0;
			CP0Outreg <= 32'd0;
		end else begin
			WDSelreg <= WDSelM;
			RFenreg <= RFenM;
			FWreg <= FWM;
			DMRDreg <= DMRDM;
			A3reg <= A3M;
			PC8reg <= PC8M;
			CP0Outreg <= CP0OutM;
		end
	end
	assign WDSelW = WDSelreg;
   assign RFenW = RFenreg;
   assign FWW = FWreg;
   assign DMRDW = DMRDreg;
   assign A3W = A3reg;
   assign PC8W = PC8reg;
	assign CP0OutW = CP0Outreg;
endmodule
