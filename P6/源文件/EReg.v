`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:49:09 11/13/2022 
// Design Name: 
// Module Name:    EReg 
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
module EReg(
    input [1:0] WDSelD,
    input RFenD,
    input FWSelD,
	 input [1:0] BEmodD,
	 input [2:0] BEXTOpD,
	 input [3:0] ALUOpD,
	 input HLSelD,
	 input [3:0] startD,
    input BSelD,
    input [31:0] RD1D,
    input [31:0] RD2D,
    input [31:0] EXTOutD,
    input [4:0] A1D,
    input [4:0] A2D,
    input [2:0] TnewD,
    input [4:0] A3D,
    input [31:0] PC8D,
    input clk,
    input clrE,
	 input reset,
    output [1:0] WDSelE,
    output RFenE,
    output FWSelE,
	 output [1:0] BEmodE,
	 output [2:0] BEXTOpE,
	 output [3:0] ALUOpE,
	 output HLSelE,
	 output [3:0] startE,
    output BSelE,
    output [31:0] RD1E,
    output [31:0] RD2E,
    output [31:0] EXTOutE,
    output [4:0] A1E,
    output [4:0] A2E,
    output [2:0] TnewE,
    output [4:0] A3E,
    output [31:0] PC8E
    );
	reg [1:0] WDSelreg;
   reg RFenreg;
   reg FWSelreg;
	reg [1:0] BEmodreg;
	reg [2:0] BEXTOpreg;
	reg [3:0] ALUOpreg;
	reg HLSelreg;
	reg [3:0] startreg;
   reg BSelreg;
   reg [31:0] RD1reg;
   reg [31:0] RD2reg;
   reg [31:0] EXTOutreg;
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
		ALUOpreg <= 4'd0;
		HLSelreg <= 1'd0;
		startreg <= 4'd0;
		BSelreg <= 1'd0;
		RD1reg <= 32'd0;
		RD2reg <= 32'd0;
		EXTOutreg <= 32'd0;
		A1reg <= 5'd0;
		A2reg <= 5'd0;
		Tnewreg <= 3'd0;
		A3reg <= 5'd0;
		PC8reg <= 32'd0;
	end
	always@(posedge clk)begin
		if(clrE || reset)begin
			WDSelreg <= 2'd0;
			RFenreg <= 1'd0;
			FWSelreg <= 1'd0;
			BEmodreg <= 2'd0;
			BEXTOpreg <= 3'd0;
			ALUOpreg <= 4'd0;
			HLSelreg <= 1'd0;
			startreg <= 4'd0;
			BSelreg <= 1'd0;
			RD1reg <= 32'd0;
			RD2reg <= 32'd0;
			EXTOutreg <= 32'd0;
			A1reg <= 5'd0;
			A2reg <= 5'd0;
			Tnewreg <= 3'd0;
			A3reg <= 5'd0;
			PC8reg <= 32'd0;
		end else begin
			WDSelreg <= WDSelD;
			RFenreg <= RFenD;
			FWSelreg <= FWSelD;
			BEmodreg <= BEmodD;
			BEXTOpreg <= BEXTOpD;
			ALUOpreg <= ALUOpD;
			HLSelreg <= HLSelD;
			startreg <= startD;
			BSelreg <= BSelD;
			RD1reg <= RD1D;
			RD2reg <= RD2D;
			EXTOutreg <= EXTOutD;
			A1reg <= A1D;
			A2reg <= A2D;
			Tnewreg <= TnewD;
			A3reg <= A3D;
			PC8reg <= PC8D;
		end
	end
	assign WDSelE = WDSelreg;
   assign RFenE = RFenreg;
   assign FWSelE = FWSelreg;
	assign BEmodE = BEmodreg;
	assign BEXTOpE = BEXTOpreg;
   assign ALUOpE = ALUOpreg;
	assign HLSelE = HLSelreg;
	assign startE = startreg;
   assign BSelE = BSelreg;
   assign RD1E = RD1reg;
   assign RD2E = RD2reg;
   assign EXTOutE = EXTOutreg;
   assign A1E = A1reg;
   assign A2E = A2reg;
   assign TnewE = (Tnewreg == 0) ? 3'd0 : (Tnewreg - 1);
   assign A3E = A3reg;
   assign PC8E = PC8reg;
endmodule
