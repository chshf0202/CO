`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:02:02 11/13/2022 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [31:0] SA,
    input [31:0] SB,
    input [3:0] ALUOp,
    output [31:0] ALUOut
    );
	wire [31:0] slt;
	wire [31:0] sltu;
	assign slt = ($signed(SA) < $signed(SB)) ? 32'd1 : 32'd0;
	assign sltu = (SA < SB) ? 32'd1 : 32'd0;
	assign ALUOut = (ALUOp == 4'b0000) ? SA + SB :
							(ALUOp == 4'b0001) ? SA - SB :
							(ALUOp == 4'b0010) ? SA & SB :
							(ALUOp == 4'b0011) ? SA | SB :
							(ALUOp == 4'b0100) ? slt :
							(ALUOp == 4'b0101) ? sltu :
							(ALUOp == 4'b0110) ? SB :
							32'd0;
endmodule
