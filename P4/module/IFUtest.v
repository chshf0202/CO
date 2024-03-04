`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:31:20 11/06/2022
// Design Name:   IFU
// Module Name:   C:/Users/17201/Desktop/CO/P4/module/IFUtest.v
// Project Name:  module
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IFU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module IFUtest;

	// Inputs
	reg CLK;
	reg Reset;
	reg [15:0] imm16;
	reg BEQ;
	reg [25:0] imm26;
	reg JAL;
	reg [31:0] ra;
	reg JR;
	reg Zero;

	// Outputs
	wire [31:0] RD;
	wire [31:0] PC4;
	wire [31:0] PC;

	// Instantiate the Unit Under Test (UUT)
	IFU uut (
		.CLK(CLK), 
		.Reset(Reset), 
		.imm16(imm16), 
		.BEQ(BEQ), 
		.imm26(imm26), 
		.JAL(JAL), 
		.ra(ra), 
		.JR(JR), 
		.Zero(Zero), 
		.RD(RD), 
		.PC4(PC4), 
		.PC(PC)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		Reset = 0;
		imm16 = 0;
		BEQ = 0;
		imm26 = 0;
		JAL = 0;
		ra = 0;
		JR = 0;
		Zero = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
   always #5 CLK = ~CLK;
endmodule

