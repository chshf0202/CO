`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:06:26 11/13/2022 
// Design Name: 
// Module Name:    MReg 
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
module MReg(
    input [1:0] WDSelE,
    input RFenE,
    input FWSelE,
	 input [1:0] BEmodE,
	 input [2:0] BEXTOpE,
    input [31:0] ALUOutE,
    input [31:0] RD2SE,
	 input [31:0] HLE,
    input [4:0] A1E,
    input [4:0] A2E,
    input [2:0] TnewE,
    input [4:0] A3E,
    input [31:0] PC8E,
    input clk,
	 input reset,
    output [1:0] WDSelM,
    output RFenM,
    output FWSelM,
	 output [1:0] BEmodM,
	 output [2:0] BEXTOpM,
    output [31:0] ALUOutM,
    output [31:0] RD2SM,
	 output [31:0] HLM,
    output [4:0] A1M,
    output [4:0] A2M,
    output [2:0] TnewM,
	 output [4:0] A3M,
    output [31:0] PC8M
    );
	reg [1:0] WDSelreg;
   reg RFenreg;
   reg FWSelreg;
	reg [1:0] BEmodreg;
	reg [2:0] BEXTOpreg;
   reg [31:0] ALUOutreg;
	reg [31:0] RD2Sreg;
	reg [31:0] HLreg;
   reg [4:0] A1reg;
   reg [4:0] A2reg;
   reg [2:0] Tnewreg;
   reg [4:0] A3reg;
   reg [31:0] PC8reg;
	initial begin
		WDSelreg <= 2'd0;
		RFenreg <= 1'd0;
		FWSelreg <= 1'd0;
		BEmodreg <= 2'd0;
		BEXTOpreg <= 3'd0;
		ALUOutreg <= 32'd0;
		RD2Sreg <= 32'd0;
		HLreg <= 32'd0;
		A1reg <= 5'd0;
		A2reg <= 5'd0;
		Tnewreg <= 3'd0;
		A3reg <= 5'd0;
		PC8reg <= 32'd0;
	end
	always@(posedge clk)begin
		if(reset)begin
			WDSelreg <= 2'd0;
			RFenreg <= 1'd0;
			FWSelreg <= 1'd0;
			BEmodreg <= 2'd0;
			BEXTOpreg <= 3'd0;
			ALUOutreg <= 32'd0;
			RD2Sreg <= 32'd0;
			HLreg <= 32'd0;
			A1reg <= 5'd0;
			A2reg <= 5'd0;
			Tnewreg <= 3'd0;
			A3reg <= 5'd0;
			PC8reg <= 32'd0;
		end else begin
			WDSelreg <= WDSelE;
			RFenreg <= RFenE;
			FWSelreg <= FWSelE;
			BEmodreg <= BEmodE;
			BEXTOpreg <= BEXTOpE;
			ALUOutreg <= ALUOutE;
			RD2Sreg <= RD2SE;
			HLreg <= HLE;
			A1reg <= A1E;
			A2reg <= A2E;
			Tnewreg <= TnewE;
			A3reg <= A3E;
			PC8reg <= PC8E;
		end
	end
	assign WDSelM = WDSelreg;
   assign RFenM = RFenreg;
   assign FWSelM = FWSelreg;
	assign BEmodM = BEmodreg;
	assign BEXTOpM = BEXTOpreg;
   assign ALUOutM = ALUOutreg;
	assign RD2SM = RD2Sreg;
	assign HLM = HLreg;
   assign A1M = A1reg;
   assign A2M = A2reg;
   assign TnewM = (Tnewreg == 0) ? 3'd0 : (Tnewreg - 1);
   assign A3M = A3reg;
   assign PC8M = PC8reg;
endmodule
