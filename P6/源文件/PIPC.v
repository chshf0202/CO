`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:26:45 11/13/2022 
// Design Name: 
// Module Name:    PIPC 
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
module PIPC(
    input [4:0] A1D,
    input [4:0] A1E,
    input [4:0] A1M,
    input [4:0] A2D,
    input [4:0] A2E,
    input [4:0] A2M,
    input [4:0] A3E,
    input [4:0] A3M,
    input [4:0] A3W,
    input [2:0] rsTuse,
    input [2:0] rtTuse,
    input [2:0] TnewE,
    input [2:0] TnewM,
	 input RFenE,
	 input RFenM,
	 input RFenW,
	 input [3:0] startD,
	 input [3:0] startE,
	 input busy,
    output [1:0] RD1DSel,
    output [1:0] RD2DSel,
    output [1:0] RD1ESel,
    output [1:0] RD2ESel,
    output DMWDSel,
    output stallPC,
    output stallD,
    output clrE
    );
	//stall
	wire STALL;
	wire stallrsE;
	wire stallrsM;
	wire stallrtE;
	wire stallrtM;
	wire stallMD;
	wire EisMD;
	assign stallrsE = (rsTuse < TnewE)&&(A1D == A3E)&&(A1D != 5'd0)&&(RFenE);
	assign stallrsM = (rsTuse < TnewM)&&(A1D == A3M)&&(A1D != 5'd0)&&(RFenM);
	assign stallrtE = (rtTuse < TnewE)&&(A2D == A3E)&&(A2D != 5'd0)&&(RFenE);
	assign stallrtM = (rtTuse < TnewM)&&(A2D == A3M)&&(A2D != 5'd0)&&(RFenM);
	assign EisMD = (startE == 4'b0001)||(startE == 4'b0010)||(startE == 4'b0011)||(startE == 4'b0100);
	assign stallMD = ((EisMD)|| busy)&&((|startD));
	assign STALL = stallrsE || stallrsM || stallrtE || stallrtM || stallMD;
	assign stallPC = STALL;
	assign stallD = STALL;
	assign clrE = STALL;
	//forward
	assign RD1DSel = (A1D == A3M && A1D != 5'd0 && TnewM == 3'b000 && RFenM) ? 2'b10 :
							(A1D == A3W && A1D != 5'd0 && RFenW) ? 2'b01 : 
							2'b00;
	assign RD2DSel = (A2D == A3M && A2D != 5'd0 && TnewM == 3'b000 && RFenM) ? 2'b10 :
							(A2D == A3W && A2D != 5'd0 && RFenW) ? 2'b01 : 
							2'b00;
	assign RD1ESel = (A1E == A3M && A1E != 5'd0 && TnewM == 3'b000 && RFenM) ? 2'b10 :
							(A1E == A3W && A1E != 5'd0 && RFenW) ? 2'b01 : 
							2'b00;
	assign RD2ESel = (A2E == A3M && A2E != 5'd0 && TnewM == 3'b000 && RFenM) ? 2'b10 :
							(A2E == A3W && A2E != 5'd0 && RFenW) ? 2'b01 : 
							2'b00;
	assign DMWDSel = (A2M == A3W && A2M != 5'd0 && RFenW) ? 1'b1 :
							1'b0;
endmodule
