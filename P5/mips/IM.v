`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:05:23 11/13/2022 
// Design Name: 
// Module Name:    IM 
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
module IM(
    input [31:0] A,
    inout [31:0] D
    );
	wire [31:0] addr;
	reg [31:0] IMreg [0:4095];
	initial begin
		$readmemh("code.txt",IMreg);
	end
	assign addr = A - 32'h3000;
	assign D = IMreg[addr[13:2]];
endmodule
