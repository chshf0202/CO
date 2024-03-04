`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:53:45 11/04/2022 
// Design Name: 
// Module Name:    EXT 
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
module EXT(
    input [15:0] imm16,
    input [1:0] EXTOp,
    output [31:0] EXTResult
    );
	assign EXTResult = (EXTOp == 2'b00) ? {{16{1'b0}},imm16} :
								(EXTOp == 2'b01) ? {{16{imm16[15]}},imm16} :
								(EXTOp == 2'b10) ? {imm16,{16{1'b0}}} :
								0;
endmodule
