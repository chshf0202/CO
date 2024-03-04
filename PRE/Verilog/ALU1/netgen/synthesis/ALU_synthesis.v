////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: ALU_synthesis.v
// /___/   /\     Timestamp: Thu Oct 06 22:36:45 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim ALU.ngc ALU_synthesis.v 
// Device	: xc6slx100-2-fgg676
// Input file	: ALU.ngc
// Output file	: C:\Users\17201\Desktop\CO\PRE\Verilog\ALU1\netgen\synthesis\ALU_synthesis.v
// # of Modules	: 1
// Design Name	: ALU
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module ALU (
inA, inB, op, ans
);
  input [3 : 0] inA;
  input [3 : 0] inB;
  input [1 : 0] op;
  output [3 : 0] ans;
  wire inA_3_IBUF_0;
  wire inA_2_IBUF_1;
  wire inA_1_IBUF_2;
  wire inA_0_IBUF_3;
  wire inB_3_IBUF_4;
  wire inB_2_IBUF_5;
  wire inB_1_IBUF_6;
  wire inB_0_IBUF_7;
  wire op_1_IBUF_8;
  wire op_0_IBUF_9;
  wire ans_3_OBUF_10;
  wire ans_2_OBUF_11;
  wire ans_1_OBUF_12;
  wire ans_0_OBUF_13;
  wire \Madd_inA[3]_inB[3]_add_6_OUT_cy<0> ;
  wire \Madd_inA[3]_inB[3]_add_6_OUT_cy<2> ;
  wire Mmux_ans3;
  LUT2 #(
    .INIT ( 4'h8 ))
  \Madd_inA[3]_inB[3]_add_6_OUT_cy<0>11  (
    .I0(inA_0_IBUF_3),
    .I1(inB_0_IBUF_7),
    .O(\Madd_inA[3]_inB[3]_add_6_OUT_cy<0> )
  );
  LUT4 #(
    .INIT ( 16'h6E68 ))
  Mmux_ans11 (
    .I0(inA_0_IBUF_3),
    .I1(inB_0_IBUF_7),
    .I2(op_1_IBUF_8),
    .I3(op_0_IBUF_9),
    .O(ans_0_OBUF_13)
  );
  LUT5 #(
    .INIT ( 32'h963CFCC0 ))
  Mmux_ans41 (
    .I0(\Madd_inA[3]_inB[3]_add_6_OUT_cy<2> ),
    .I1(inA_3_IBUF_0),
    .I2(inB_3_IBUF_4),
    .I3(op_0_IBUF_9),
    .I4(op_1_IBUF_8),
    .O(ans_3_OBUF_10)
  );
  LUT5 #(
    .INIT ( 32'hFEEA5440 ))
  Mmux_ans32 (
    .I0(op_1_IBUF_8),
    .I1(inB_2_IBUF_5),
    .I2(op_0_IBUF_9),
    .I3(inA_2_IBUF_1),
    .I4(Mmux_ans3),
    .O(ans_2_OBUF_11)
  );
  IBUF   inA_3_IBUF (
    .I(inA[3]),
    .O(inA_3_IBUF_0)
  );
  IBUF   inA_2_IBUF (
    .I(inA[2]),
    .O(inA_2_IBUF_1)
  );
  IBUF   inA_1_IBUF (
    .I(inA[1]),
    .O(inA_1_IBUF_2)
  );
  IBUF   inA_0_IBUF (
    .I(inA[0]),
    .O(inA_0_IBUF_3)
  );
  IBUF   inB_3_IBUF (
    .I(inB[3]),
    .O(inB_3_IBUF_4)
  );
  IBUF   inB_2_IBUF (
    .I(inB[2]),
    .O(inB_2_IBUF_5)
  );
  IBUF   inB_1_IBUF (
    .I(inB[1]),
    .O(inB_1_IBUF_6)
  );
  IBUF   inB_0_IBUF (
    .I(inB[0]),
    .O(inB_0_IBUF_7)
  );
  IBUF   op_1_IBUF (
    .I(op[1]),
    .O(op_1_IBUF_8)
  );
  IBUF   op_0_IBUF (
    .I(op[0]),
    .O(op_0_IBUF_9)
  );
  OBUF   ans_3_OBUF (
    .I(ans_3_OBUF_10),
    .O(ans[3])
  );
  OBUF   ans_2_OBUF (
    .I(ans_2_OBUF_11),
    .O(ans[2])
  );
  OBUF   ans_1_OBUF (
    .I(ans_1_OBUF_12),
    .O(ans[1])
  );
  OBUF   ans_0_OBUF (
    .I(ans_0_OBUF_13),
    .O(ans[0])
  );
  LUT6 #(
    .INIT ( 64'h9996666696666666 ))
  Mmux_ans31 (
    .I0(inA_2_IBUF_1),
    .I1(inB_2_IBUF_5),
    .I2(\Madd_inA[3]_inB[3]_add_6_OUT_cy<0> ),
    .I3(inB_1_IBUF_6),
    .I4(op_0_IBUF_9),
    .I5(inA_1_IBUF_2),
    .O(Mmux_ans3)
  );
  LUT6 #(
    .INIT ( 64'hD67C7C7C68686868 ))
  Mmux_ans21 (
    .I0(op_1_IBUF_8),
    .I1(inB_1_IBUF_6),
    .I2(inA_1_IBUF_2),
    .I3(inA_0_IBUF_3),
    .I4(inB_0_IBUF_7),
    .I5(op_0_IBUF_9),
    .O(ans_1_OBUF_12)
  );
  LUT6 #(
    .INIT ( 64'hEEE8E888E888E888 ))
  \Madd_inA[3]_inB[3]_add_6_OUT_cy<2>11  (
    .I0(inA_2_IBUF_1),
    .I1(inB_2_IBUF_5),
    .I2(inA_1_IBUF_2),
    .I3(inB_1_IBUF_6),
    .I4(inA_0_IBUF_3),
    .I5(inB_0_IBUF_7),
    .O(\Madd_inA[3]_inB[3]_add_6_OUT_cy<2> )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

