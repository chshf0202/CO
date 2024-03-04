`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:37:28 12/04/2022 
// Design Name: 
// Module Name:    CP0 
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
module CP0(
    input clk,
    input reset,
    input en,
    input [4:0] CP0Add,
    input [31:0] CP0In,
    output [31:0] CP0Out,
    input [31:0] VPC,
    input BDIn,
    input [4:0] ExcCodeIn,
    input [5:0] HWInt,
    input EXLClr,
    output [31:0] EPCOut,
    output Req
    );
	reg [31:0] R [12:14];
	wire [31:0] EPC;
	initial begin
		R[12] <= 32'd0;
		R[13] <= 32'd0;
		R[14] <= 32'd0;
	end
	always@(posedge clk)begin
		if(reset)begin
			R[12] <= 32'd0;
			R[13] <= 32'd0;
			R[14] <= 32'd0;
		end else begin
			if(en &&(CP0Add >= 12)&&(CP0Add <= 14))begin
				R[CP0Add] <= CP0In;
			end
			if(Req)begin
				R[13][6:2] <= ExcCodeIn;
				R[13][31] <= BDIn;
				R[12][1] <= 1'b1;
				R[14] <= EPCOut;
			end else if(EXLClr)begin
				R[12][1] <= 1'b0;
			end
			R[13][15:10] <= HWInt;
		end
	end
	assign Req = ((|(HWInt & R[12][15:10]))&&(~R[12][1])&&(R[12][0]))||((|ExcCodeIn)&&(~R[12][1]));
	assign EPC = (BDIn) ? (VPC - 32'd4) : VPC;
	assign EPCOut = (Req) ? EPC : R[14];
	assign CP0Out = ((CP0Add >= 12)&&(CP0Add <= 14)) ? R[CP0Add] : 32'd0;
endmodule
