`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:48:42 12/05/2022 
// Design Name: 
// Module Name:    Bridge 
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
module Bridge(
	input [31:0] A,
	input [3:0] PrByteen,
	input [31:0] PrWD,
	output [31:0] PrRD,
	output [31:0] DMAddr,
	output [31:0] TC0Addr,
	output [31:0] TC1Addr,
	output [31:0] IGAddr,
	output [3:0] DMByteen,
	output TC0WE,
	output TC1WE,
	output [3:0] IGByteen,
	output [31:0] DevWD,
	input [31:0] DMRD,
	input [31:0] TC0RD,
	input [31:0] TC1RD
    );
	wire hitDM;
	wire hitTC0;
	wire hitTC1;
	wire hitIG;
	assign hitDM = (A >= 32'h0000)&&(A <= 32'h2fff);
	assign hitTC0 = (A >= 32'h7f00)&&(A <= 32'h7f0b);
	assign hitTC1 = (A >= 32'h7f10)&&(A <= 32'h7f1b);
	assign hitIG = (A >= 32'h7f20)&&(A <= 32'h7f23);
	assign PrRD = (hitDM) ? DMRD :
						(hitTC0) ? TC0RD :
						(hitTC1) ? TC1RD :
						32'd0;
	assign DMByteen = (hitDM) ? PrByteen : 4'd0;
	assign TC0WE = hitTC0 &&(|PrByteen);
	assign TC1WE = hitTC1 &&(|PrByteen);
	assign IGByteen = (hitIG) ? PrByteen : 4'd0;
	assign DevWD = PrWD;
	assign DMAddr = A;
	assign TC0Addr = A;
	assign TC1Addr = A;
	assign IGAddr = A;
endmodule
