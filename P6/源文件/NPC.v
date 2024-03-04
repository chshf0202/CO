`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:12:00 11/13/2022 
// Design Name: 
// Module Name:    NPC 
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
module NPC(
    input [31:0] PC,
    input Zero,
    input [1:0] Br,
    input [15:0] imm16,
    input JAL,
    input [25:0] imm26,
    input JR,
    input [31:0] ra,
	 input [31:0] PC8D,
    output [31:0] NPC,
    output [31:0] PC8F
    );
	wire [31:0] br;
	wire [31:0] jal;
	wire [31:0] PC4;
	wire [31:0] PCD;
	assign PCD = PC8D - 32'd8;
	assign PC4 = PC + 32'd4;
	assign PC8F = PC + 32'd8;
	assign br = PCD + 32'd4 + {{14{imm16[15]}},imm16,1'b0,1'b0};
	assign jal = {PCD[31:28],imm26,1'b0,1'b0};
	assign NPC = ((Br == 2'b01 && Zero == 1'b1)||(Br == 2'b10 && Zero == 1'b0)) ? br : 
						(JAL == 1'b1) ? jal :
						(JR == 1'b1) ? ra :
						PC4;
endmodule
