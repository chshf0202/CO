`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:32:43 11/04/2022 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input clk,
    input reset
    );
	wire [31:0] ifuRD;
	wire [15:0] ifuimm16;
	wire [25:0] ifuimm26;
	wire [31:0] ifuPC4;
	wire [31:0] ifuPC;
	wire [4:0] grfA1;
	wire [4:0] grfA2;
	wire [31:0] grfRD1;
	wire [31:0] grfRD2;
	wire [4:0] A3;
	wire [31:0] WD;
	wire [31:0] aluALUResult;
	wire aluZero;
	wire [31:0] SB; 
	wire [31:0] dmRD;
	wire [15:0] extimm16;
	wire [31:0] extEXTResult;
	wire [5:0] ctrlopcode;
   wire [5:0] ctrlfunct;
   wire ctrlBEQ;
   wire ctrlJAL; 
   wire ctrlJR;
   wire [1:0] ctrlWRSel; 
   wire [1:0] ctrlWDSel; 
   wire ctrlBSel;
   wire [1:0] ctrlEXTOp;
   wire [2:0] ctrlALUOp;
   wire ctrlRFWE;
   wire ctrlDMWR;
	IFU ifu (
    clk, 
    reset, 
    ifuimm16, 
    ctrlBEQ, 
    ifuimm26, 
    ctrlJAL, 
    grfRD1, 
    ctrlJR, 
    aluZero, 
    ifuRD, 
    ifuPC4, 
    ifuPC
    );
	GRF grf (
    clk,
    reset, 
    ctrlRFWE, 
    grfA1, 
    grfA2, 
    A3, 
    WD, 
    ifuPC, 
    grfRD1, 
    grfRD2
    );
	ALU alu (
    grfRD1, 
    SB, 
    ctrlALUOp, 
    aluALUResult, 
    aluZero
    );
	DM dm (
    clk, 
    reset, 
    ctrlDMWR, 
    aluALUResult, 
    grfRD2, 
    ifuPC, 
    dmRD
    );
	EXT ext (
    extimm16, 
    ctrlEXTOp, 
    extEXTResult
    );
	CTRL ctrl (
    ctrlopcode, 
    ctrlfunct, 
    ctrlBEQ, 
    ctrlJAL, 
    ctrlJR, 
    ctrlWRSel, 
    ctrlWDSel, 
    ctrlBSel, 
    ctrlEXTOp, 
    ctrlALUOp, 
    ctrlRFWE, 
    ctrlDMWR
    );
	assign ifuimm26 = ifuRD[25:0];
	assign ifuimm16 = ifuRD[15:0];
	assign grfA1 = ifuRD[25:21];
	assign grfA2 = ifuRD[20:16];
	assign A3 = (ctrlWRSel == 2'b10) ? 5'h1f : 
					(ctrlWRSel == 2'b01) ? ifuRD[15:11] :
					ifuRD[20:16];
	assign WD = (ctrlWDSel == 2'b01) ? dmRD :
					(ctrlWDSel == 2'b10) ? ifuPC4 :
					aluALUResult;
	assign SB = (ctrlBSel == 1'b1) ? extEXTResult : grfRD2;
	assign extimm16 = ifuRD[15:0];
	assign ctrlopcode = ifuRD[31:26];
	assign ctrlfunct = ifuRD[5:0];
endmodule
