`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:51:18 11/04/2022 
// Design Name: 
// Module Name:    IFU 
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
module IFU(
    input CLK,
    input Reset,
    input [15:0] imm16,
    input BEQ,
    input [25:0] imm26,
    input JAL,
    input [31:0] ra,
    input JR,
    input Zero,
    output [31:0] RD,
	 output [31:0] PC4,
	 output [31:0] PC
    );
	reg [31:0] IMReg [0:4095];
	reg [31:0] pcreg;
	wire [31:0] NPC;
	wire [31:0] beq;
	wire [31:0] jal;
	wire [31:0] addr;
	initial begin
		pcreg <= 32'h3000;
		$readmemh("code.txt",IMReg);
	end
	always@(posedge CLK)begin
		if(Reset)begin
			pcreg <= 32'h3000;
		end else begin
			pcreg <= NPC;
		end
	end
	assign addr = pcreg - 32'h3000;
	assign PC4 = pcreg + 32'd4;
	assign beq = pcreg + 32'd4 + {{14{imm16[15]}},imm16,1'b0,1'b0};
	assign jal = {pcreg[31:28],imm26,1'b0,1'b0};
	assign NPC = (BEQ == 1'b1 && Zero == 1'b1) ? beq : 
						(JAL == 1'b1) ? jal :
						(JR == 1'b1) ? ra :
						PC4;
	assign RD = IMReg[addr[13:2]];
	assign PC = pcreg;
endmodule
