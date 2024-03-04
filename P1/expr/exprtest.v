`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:17:26 10/10/2022
// Design Name:   expr
// Module Name:   C:/Users/17201/Desktop/CO/P1/expr/exprtest.v
// Project Name:  expr
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: expr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module exprtest;

	// Inputs
	reg clk;
	reg clr;
	reg [7:0] in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	expr uut (
		.clk(clk), 
		.clr(clr), 
		.in(in), 
		.out(out)
	);


	initial begin
		// Initialize Inputs
		clk = 0;
		clr = 0;
      in = "1";
		#10;
		in = "+";
		#10;
		in = "2";
		#10;
		in = "2";
		#10;
		in = "1";
		clr = 1;
		#2;
		clr = 0;
		#8;
		in = "1";
		#10;
		clr = 1;
		in = "1";
		#2;
		clr = 0;
		in = "1";
		#8;
		in = "1";
		#100;
		// Add stimulus here

	end
   always #5 clk = ~clk;


endmodule

