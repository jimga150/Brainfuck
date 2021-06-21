// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jun 18 21:28:17 2021
// Host        : Geb running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Jim/Desktop/Code/BrainFuck/VHDL/BFISA/BFISA.sim/sim_1/impl/timing/xsim/top_tb_time_impl.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM256X1S_UNIQ_BASE_
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD4150
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD4151
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD4152
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD4153
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD4154
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD4155
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD4156
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module ISA_top
   (spo,
    logic_rst,
    \qsig_reg[15] ,
    out_enable_OBUF,
    clk_out1,
    ptr_ce,
    pulse_reg,
    dbc_result,
    dbcd_ce,
    dbc_result_0,
    pulse_reg_1,
    reset,
    locked,
    key_IBUF);
  output [7:0]spo;
  output logic_rst;
  output [1:0]\qsig_reg[15] ;
  output out_enable_OBUF;
  input clk_out1;
  input ptr_ce;
  input pulse_reg;
  input dbc_result;
  input dbcd_ce;
  input dbc_result_0;
  input pulse_reg_1;
  input reset;
  input locked;
  input [7:0]key_IBUF;

  wire PC_n_17;
  wire PC_n_19;
  wire PC_n_20;
  wire PC_n_21;
  wire PC_n_22;
  wire PC_n_23;
  wire PC_n_24;
  wire PC_n_25;
  wire PC_n_26;
  wire PC_n_27;
  wire PC_n_28;
  wire PC_n_29;
  wire PC_n_30;
  wire Pointer_n_11;
  wire Pointer_n_12;
  wire Pointer_n_13;
  wire Pointer_n_14;
  wire Pointer_n_15;
  wire [7:1]RAM_data_in0;
  wire RAM_data_in0_carry__0_i_1_n_0;
  wire RAM_data_in0_carry__0_i_2_n_0;
  wire RAM_data_in0_carry__0_i_3_n_0;
  wire RAM_data_in0_carry_i_2_n_0;
  wire RAM_data_in0_carry_i_3_n_0;
  wire RAM_data_in0_carry_n_0;
  wire [7:0]a;
  wire clk_out1;
  wire [7:0]d;
  wire dbc_result;
  wire dbc_result_0;
  wire dbcd_ce;
  wire [7:0]key_IBUF;
  wire locked;
  wire logic_rst;
  wire out_enable_OBUF;
  wire ptr_ce;
  wire ptr_next_carry__0_n_5;
  wire ptr_next_carry__0_n_6;
  wire ptr_next_carry__0_n_7;
  wire ptr_next_carry_n_0;
  wire ptr_next_carry_n_4;
  wire ptr_next_carry_n_5;
  wire ptr_next_carry_n_6;
  wire ptr_next_carry_n_7;
  wire pulse_reg;
  wire pulse_reg_1;
  wire [7:0]qsig_reg;
  wire [1:0]\qsig_reg[15] ;
  wire reset;
  wire [7:0]spo;
  wire we;
  wire [2:0]NLW_RAM_data_in0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_RAM_data_in0_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_RAM_data_in0_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_ptr_next_carry_CO_UNCONNECTED;
  wire [3:0]NLW_ptr_next_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_ptr_next_carry__0_O_UNCONNECTED;

  register_16b PC
       (.DI(PC_n_17),
        .O({ptr_next_carry_n_4,ptr_next_carry_n_5,ptr_next_carry_n_6,ptr_next_carry_n_7}),
        .RAM_data_in0(RAM_data_in0),
        .S({PC_n_20,PC_n_21,PC_n_22,PC_n_23}),
        .a(a[4:0]),
        .clk_out1(clk_out1),
        .d(d),
        .dbc_result(dbc_result),
        .dbc_result_0(dbc_result_0),
        .dbcd_ce(dbcd_ce),
        .key_IBUF(key_IBUF),
        .locked(locked),
        .out_enable_OBUF(out_enable_OBUF),
        .pulse_reg(pulse_reg),
        .pulse_reg_1(pulse_reg_1),
        .qsig_reg(qsig_reg),
        .\qsig_reg[15]_0 (\qsig_reg[15] [1]),
        .\qsig_reg[15]_1 (\qsig_reg[15] [0]),
        .\qsig_reg[15]_2 (PC_n_19),
        .\qsig_reg[15]_3 ({PC_n_27,PC_n_28}),
        .\qsig_reg[2]_0 ({PC_n_29,PC_n_30}),
        .\qsig_reg[3]_0 ({PC_n_24,PC_n_25,PC_n_26}),
        .reset(reset),
        .rst(logic_rst),
        .spo(spo),
        .we(we));
  register_16b_2 Pointer
       (.O({ptr_next_carry__0_n_5,ptr_next_carry__0_n_6,ptr_next_carry__0_n_7}),
        .S({PC_n_20,PC_n_21,PC_n_22,PC_n_23}),
        .a(a[7:5]),
        .clk_out1(clk_out1),
        .ptr_ce(ptr_ce),
        .qsig_reg(qsig_reg),
        .\qsig_reg[3]_0 ({Pointer_n_11,Pointer_n_12}),
        .\qsig_reg[3]_1 ({PC_n_24,PC_n_25,PC_n_26}),
        .\qsig_reg[6]_0 ({Pointer_n_13,Pointer_n_14,Pointer_n_15}),
        .\qsig_reg[7]_0 (logic_rst),
        .work_mem(\qsig_reg[15] [1]),
        .work_mem_0(\qsig_reg[15] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 RAM_data_in0_carry
       (.CI(1'b0),
        .CO({RAM_data_in0_carry_n_0,NLW_RAM_data_in0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(spo[0]),
        .DI({spo[3:2],PC_n_17,spo[1]}),
        .O(RAM_data_in0[4:1]),
        .S({RAM_data_in0_carry_i_2_n_0,RAM_data_in0_carry_i_3_n_0,PC_n_27,PC_n_28}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 RAM_data_in0_carry__0
       (.CI(RAM_data_in0_carry_n_0),
        .CO(NLW_RAM_data_in0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,spo[5:4]}),
        .O({NLW_RAM_data_in0_carry__0_O_UNCONNECTED[3],RAM_data_in0[7:5]}),
        .S({1'b0,RAM_data_in0_carry__0_i_1_n_0,RAM_data_in0_carry__0_i_2_n_0,RAM_data_in0_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    RAM_data_in0_carry__0_i_1
       (.I0(spo[6]),
        .I1(spo[7]),
        .O(RAM_data_in0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RAM_data_in0_carry__0_i_2
       (.I0(spo[5]),
        .I1(spo[6]),
        .O(RAM_data_in0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RAM_data_in0_carry__0_i_3
       (.I0(spo[4]),
        .I1(spo[5]),
        .O(RAM_data_in0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RAM_data_in0_carry_i_2
       (.I0(spo[3]),
        .I1(spo[4]),
        .O(RAM_data_in0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RAM_data_in0_carry_i_3
       (.I0(spo[2]),
        .I1(spo[3]),
        .O(RAM_data_in0_carry_i_3_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ptr_next_carry
       (.CI(1'b0),
        .CO({ptr_next_carry_n_0,NLW_ptr_next_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(qsig_reg[0]),
        .DI({qsig_reg[3:2],PC_n_19,qsig_reg[1]}),
        .O({ptr_next_carry_n_4,ptr_next_carry_n_5,ptr_next_carry_n_6,ptr_next_carry_n_7}),
        .S({Pointer_n_11,Pointer_n_12,PC_n_29,PC_n_30}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ptr_next_carry__0
       (.CI(ptr_next_carry_n_0),
        .CO(NLW_ptr_next_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,qsig_reg[5:4]}),
        .O({NLW_ptr_next_carry__0_O_UNCONNECTED[3],ptr_next_carry__0_n_5,ptr_next_carry__0_n_6,ptr_next_carry__0_n_7}),
        .S({1'b0,Pointer_n_13,Pointer_n_14,Pointer_n_15}));
  (* IMPORTED_FROM = "c:/Users/Jim/Desktop/Code/BrainFuck/VHDL/BFISA/BFISA.gen/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
  dist_mem_gen_0 work_mem
       (.a(a),
        .clk(clk_out1),
        .d(d),
        .spo(spo),
        .we(we));
endmodule

module clk_wiz_0
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire locked;
  wire reset;

  clk_wiz_0_clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .locked(locked),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0_clk_wiz" *) 
module clk_wiz_0_clk_wiz_0_clk_wiz
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_clk_wiz_0;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clk_out1_clk_wiz_0_en_clk;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire locked;
  wire reset;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) wire [7:0]seq_reg1;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_clk_wiz_0));
  (* OPT_MODIFIED = "BUFG_OPT" *) 
  (* XILINX_LEGACY_PRIM = "BUFGCE" *) 
  (* XILINX_TRANSFORM_PINMAP = "CE:CE0 I:I0" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFGCTRL #(
    .CE_TYPE_CE0("SYNC"),
    .CE_TYPE_CE1("SYNC"),
    .INIT_OUT(0),
    .PRESELECT_I0("TRUE"),
    .PRESELECT_I1("FALSE"),
    .SIM_DEVICE("7SERIES"),
    .STARTUP_SYNC("FALSE")) 
    clkout1_buf
       (.CE0(seq_reg1[7]),
        .CE1(1'b0),
        .I0(clk_out1_clk_wiz_0),
        .I1(1'b1),
        .IGNORE0(1'b0),
        .IGNORE1(1'b1),
        .O(clk_out1),
        .S0(1'b1),
        .S1(1'b0));
  (* OPT_MODIFIED = "BUFG_OPT" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFH clkout1_buf_en
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1_clk_wiz_0_en_clk));
  (* OPT_MODIFIED = "BUFG_OPT" *) 
  (* box_type = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(10.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(20.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
  initial assign \seq_reg1_reg[0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \seq_reg1_reg[0] 
       (.C(clk_out1_clk_wiz_0_en_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(locked),
        .Q(seq_reg1[0]));
  initial assign \seq_reg1_reg[1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* \PinAttr:D:HOLD_DETOUR  = "85" *) 
  FDCE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \seq_reg1_reg[1] 
       (.C(clk_out1_clk_wiz_0_en_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(seq_reg1[0]),
        .Q(seq_reg1[1]));
  initial assign \seq_reg1_reg[2] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \seq_reg1_reg[2] 
       (.C(clk_out1_clk_wiz_0_en_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(seq_reg1[1]),
        .Q(seq_reg1[2]));
  initial assign \seq_reg1_reg[3] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \seq_reg1_reg[3] 
       (.C(clk_out1_clk_wiz_0_en_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(seq_reg1[2]),
        .Q(seq_reg1[3]));
  initial assign \seq_reg1_reg[4] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \seq_reg1_reg[4] 
       (.C(clk_out1_clk_wiz_0_en_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(seq_reg1[3]),
        .Q(seq_reg1[4]));
  initial assign \seq_reg1_reg[5] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \seq_reg1_reg[5] 
       (.C(clk_out1_clk_wiz_0_en_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(seq_reg1[4]),
        .Q(seq_reg1[5]));
  initial assign \seq_reg1_reg[6] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \seq_reg1_reg[6] 
       (.C(clk_out1_clk_wiz_0_en_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(seq_reg1[5]),
        .Q(seq_reg1[6]));
  initial assign \seq_reg1_reg[7] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \seq_reg1_reg[7] 
       (.C(clk_out1_clk_wiz_0_en_clk),
        .CE(1'b1),
        .CLR(reset),
        .D(seq_reg1[6]),
        .Q(seq_reg1[7]));
endmodule

module debounce
   (dbc_result,
    clk_out1,
    logic_rst,
    D);
  output dbc_result;
  input clk_out1;
  input logic_rst;
  input [0:0]D;

  wire [0:0]D;
  wire clk_out1;
  wire \count[0]_i_10_n_0 ;
  wire \count[0]_i_11_n_0 ;
  wire \count[0]_i_1_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire \count[0]_i_7_n_0 ;
  wire \count[0]_i_8_n_0 ;
  wire \count[0]_i_9_n_0 ;
  wire \count[12]_i_2_n_0 ;
  wire \count[12]_i_3_n_0 ;
  wire \count[12]_i_4_n_0 ;
  wire \count[12]_i_5_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire \count[4]_i_3_n_0 ;
  wire \count[4]_i_4_n_0 ;
  wire \count[4]_i_5_n_0 ;
  wire \count[8]_i_2_n_0 ;
  wire \count[8]_i_3_n_0 ;
  wire \count[8]_i_4_n_0 ;
  wire \count[8]_i_5_n_0 ;
  wire [15:0]count_reg;
  wire \count_reg[0]_i_2_n_0 ;
  wire \count_reg[0]_i_2_n_4 ;
  wire \count_reg[0]_i_2_n_5 ;
  wire \count_reg[0]_i_2_n_6 ;
  wire \count_reg[0]_i_2_n_7 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire dbc_result;
  wire \flipflops_reg_n_0_[0] ;
  wire logic_rst;
  wire p_0_in;
  wire result_i_1_n_0;
  wire [2:0]\NLW_count_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \count[0]_i_10 
       (.I0(count_reg[1]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[5]),
        .I4(count_reg[4]),
        .I5(count_reg[3]),
        .O(\count[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \count[0]_i_11 
       (.I0(count_reg[6]),
        .I1(count_reg[7]),
        .I2(count_reg[8]),
        .I3(count_reg[9]),
        .I4(count_reg[10]),
        .I5(count_reg[11]),
        .O(\count[0]_i_11_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF6FF)) 
    \count[0]_i_3 
       (.I0(\flipflops_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(\count[0]_i_9_n_0 ),
        .I3(count_reg[15]),
        .I4(\count[0]_i_10_n_0 ),
        .I5(\count[0]_i_11_n_0 ),
        .O(\count[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[0]_i_4 
       (.I0(count_reg[0]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[0]_i_5 
       (.I0(count_reg[3]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[0]_i_6 
       (.I0(count_reg[2]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[0]_i_7 
       (.I0(count_reg[1]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \count[0]_i_8 
       (.I0(count_reg[0]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \count[0]_i_9 
       (.I0(count_reg[12]),
        .I1(count_reg[14]),
        .I2(count_reg[13]),
        .O(\count[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[12]_i_2 
       (.I0(count_reg[15]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[12]_i_3 
       (.I0(count_reg[14]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[12]_i_4 
       (.I0(count_reg[13]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[12]_i_5 
       (.I0(count_reg[12]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[4]_i_2 
       (.I0(count_reg[7]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[4]_i_3 
       (.I0(count_reg[6]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[4]_i_4 
       (.I0(count_reg[5]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[4]_i_5 
       (.I0(count_reg[4]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[8]_i_2 
       (.I0(count_reg[11]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[8]_i_3 
       (.I0(count_reg[10]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[8]_i_4 
       (.I0(count_reg[9]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[8]_i_5 
       (.I0(count_reg[8]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[0]_i_2_n_7 ),
        .Q(count_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2_n_0 ,\NLW_count_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count[0]_i_4_n_0 }),
        .O({\count_reg[0]_i_2_n_4 ,\count_reg[0]_i_2_n_5 ,\count_reg[0]_i_2_n_6 ,\count_reg[0]_i_2_n_7 }),
        .S({\count[0]_i_5_n_0 ,\count[0]_i_6_n_0 ,\count[0]_i_7_n_0 ,\count[0]_i_8_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO(\NLW_count_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count[12]_i_2_n_0 ,\count[12]_i_3_n_0 ,\count[12]_i_4_n_0 ,\count[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[0]_i_2_n_6 ),
        .Q(count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[0]_i_2_n_5 ),
        .Q(count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[0]_i_2_n_4 ),
        .Q(count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_2_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\NLW_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count[4]_i_2_n_0 ,\count[4]_i_3_n_0 ,\count[4]_i_4_n_0 ,\count[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\NLW_count_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count[8]_i_2_n_0 ,\count[8]_i_3_n_0 ,\count[8]_i_4_n_0 ,\count[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk_out1),
        .CE(\count[0]_i_1_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]));
  FDCE #(
    .INIT(1'b0)) 
    \flipflops_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(D),
        .Q(\flipflops_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \flipflops_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\flipflops_reg_n_0_[0] ),
        .Q(p_0_in));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    result_i_1
       (.I0(p_0_in),
        .I1(\count[0]_i_1_n_0 ),
        .I2(dbc_result),
        .O(result_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    result_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(result_i_1_n_0),
        .Q(dbc_result));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module debounce_1
   (result_reg_0,
    ptr_ce,
    dbcd_ce,
    clk_out1,
    logic_rst,
    pulse_reg,
    \qsig_reg[0] ,
    D);
  output result_reg_0;
  output ptr_ce;
  output dbcd_ce;
  input clk_out1;
  input logic_rst;
  input pulse_reg;
  input [1:0]\qsig_reg[0] ;
  input [0:0]D;

  wire [0:0]D;
  wire clk_out1;
  wire \count[0]_i_10__0_n_0 ;
  wire \count[0]_i_11__0_n_0 ;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[0]_i_4__0_n_0 ;
  wire \count[0]_i_5__0_n_0 ;
  wire \count[0]_i_6__0_n_0 ;
  wire \count[0]_i_7__0_n_0 ;
  wire \count[0]_i_8__0_n_0 ;
  wire \count[0]_i_9__0_n_0 ;
  wire \count[12]_i_2__0_n_0 ;
  wire \count[12]_i_3__0_n_0 ;
  wire \count[12]_i_4__0_n_0 ;
  wire \count[12]_i_5__0_n_0 ;
  wire \count[4]_i_2__0_n_0 ;
  wire \count[4]_i_3__0_n_0 ;
  wire \count[4]_i_4__0_n_0 ;
  wire \count[4]_i_5__0_n_0 ;
  wire \count[8]_i_2__0_n_0 ;
  wire \count[8]_i_3__0_n_0 ;
  wire \count[8]_i_4__0_n_0 ;
  wire \count[8]_i_5__0_n_0 ;
  wire [15:0]count_reg;
  wire \count_reg[0]_i_2__0_n_0 ;
  wire \count_reg[0]_i_2__0_n_4 ;
  wire \count_reg[0]_i_2__0_n_5 ;
  wire \count_reg[0]_i_2__0_n_6 ;
  wire \count_reg[0]_i_2__0_n_7 ;
  wire \count_reg[12]_i_1__0_n_4 ;
  wire \count_reg[12]_i_1__0_n_5 ;
  wire \count_reg[12]_i_1__0_n_6 ;
  wire \count_reg[12]_i_1__0_n_7 ;
  wire \count_reg[4]_i_1__0_n_0 ;
  wire \count_reg[4]_i_1__0_n_4 ;
  wire \count_reg[4]_i_1__0_n_5 ;
  wire \count_reg[4]_i_1__0_n_6 ;
  wire \count_reg[4]_i_1__0_n_7 ;
  wire \count_reg[8]_i_1__0_n_0 ;
  wire \count_reg[8]_i_1__0_n_4 ;
  wire \count_reg[8]_i_1__0_n_5 ;
  wire \count_reg[8]_i_1__0_n_6 ;
  wire \count_reg[8]_i_1__0_n_7 ;
  wire dbcd_ce;
  wire \flipflops_reg_n_0_[0] ;
  wire logic_rst;
  wire p_0_in;
  wire ptr_ce;
  wire pulse_reg;
  wire [1:0]\qsig_reg[0] ;
  wire result_i_1__0_n_0;
  wire result_reg_0;
  wire [2:0]\NLW_count_reg[0]_i_2__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_1__0_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \count[0]_i_10__0 
       (.I0(count_reg[1]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[5]),
        .I4(count_reg[4]),
        .I5(count_reg[3]),
        .O(\count[0]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \count[0]_i_11__0 
       (.I0(count_reg[6]),
        .I1(count_reg[7]),
        .I2(count_reg[8]),
        .I3(count_reg[9]),
        .I4(count_reg[10]),
        .I5(count_reg[11]),
        .O(\count[0]_i_11__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF6FF)) 
    \count[0]_i_3__0 
       (.I0(\flipflops_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(\count[0]_i_9__0_n_0 ),
        .I3(count_reg[15]),
        .I4(\count[0]_i_10__0_n_0 ),
        .I5(\count[0]_i_11__0_n_0 ),
        .O(\count[0]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[0]_i_4__0 
       (.I0(count_reg[0]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[0]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[0]_i_5__0 
       (.I0(count_reg[3]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[0]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[0]_i_6__0 
       (.I0(count_reg[2]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[0]_i_6__0_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[0]_i_7__0 
       (.I0(count_reg[1]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[0]_i_7__0_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \count[0]_i_8__0 
       (.I0(count_reg[0]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[0]_i_8__0_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \count[0]_i_9__0 
       (.I0(count_reg[12]),
        .I1(count_reg[14]),
        .I2(count_reg[13]),
        .O(\count[0]_i_9__0_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[12]_i_2__0 
       (.I0(count_reg[15]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[12]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[12]_i_3__0 
       (.I0(count_reg[14]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[12]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[12]_i_4__0 
       (.I0(count_reg[13]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[12]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[12]_i_5__0 
       (.I0(count_reg[12]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[12]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[4]_i_2__0 
       (.I0(count_reg[7]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[4]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[4]_i_3__0 
       (.I0(count_reg[6]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[4]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[4]_i_4__0 
       (.I0(count_reg[5]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[4]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[4]_i_5__0 
       (.I0(count_reg[4]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[4]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[8]_i_2__0 
       (.I0(count_reg[11]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[8]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[8]_i_3__0 
       (.I0(count_reg[10]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[8]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[8]_i_4__0 
       (.I0(count_reg[9]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[8]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \count[8]_i_5__0 
       (.I0(count_reg[8]),
        .I1(\flipflops_reg_n_0_[0] ),
        .I2(p_0_in),
        .O(\count[8]_i_5__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_out1),
        .CE(\count[0]_i_1__0_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[0]_i_2__0_n_7 ),
        .Q(count_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2__0_n_0 ,\NLW_count_reg[0]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count[0]_i_4__0_n_0 }),
        .O({\count_reg[0]_i_2__0_n_4 ,\count_reg[0]_i_2__0_n_5 ,\count_reg[0]_i_2__0_n_6 ,\count_reg[0]_i_2__0_n_7 }),
        .S({\count[0]_i_5__0_n_0 ,\count[0]_i_6__0_n_0 ,\count[0]_i_7__0_n_0 ,\count[0]_i_8__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk_out1),
        .CE(\count[0]_i_1__0_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[8]_i_1__0_n_5 ),
        .Q(count_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_out1),
        .CE(\count[0]_i_1__0_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[8]_i_1__0_n_4 ),
        .Q(count_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_out1),
        .CE(\count[0]_i_1__0_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[12]_i_1__0_n_7 ),
        .Q(count_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[12]_i_1__0 
       (.CI(\count_reg[8]_i_1__0_n_0 ),
        .CO(\NLW_count_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1__0_n_4 ,\count_reg[12]_i_1__0_n_5 ,\count_reg[12]_i_1__0_n_6 ,\count_reg[12]_i_1__0_n_7 }),
        .S({\count[12]_i_2__0_n_0 ,\count[12]_i_3__0_n_0 ,\count[12]_i_4__0_n_0 ,\count[12]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk_out1),
        .CE(\count[0]_i_1__0_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[12]_i_1__0_n_6 ),
        .Q(count_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk_out1),
        .CE(\count[0]_i_1__0_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[12]_i_1__0_n_5 ),
        .Q(count_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk_out1),
        .CE(\count[0]_i_1__0_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[12]_i_1__0_n_4 ),
        .Q(count_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_out1),
        .CE(\count[0]_i_1__0_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[0]_i_2__0_n_6 ),
        .Q(count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_out1),
        .CE(\count[0]_i_1__0_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[0]_i_2__0_n_5 ),
        .Q(count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_out1),
        .CE(\count[0]_i_1__0_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[0]_i_2__0_n_4 ),
        .Q(count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_out1),
        .CE(\count[0]_i_1__0_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[4]_i_1__0_n_7 ),
        .Q(count_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[4]_i_1__0 
       (.CI(\count_reg[0]_i_2__0_n_0 ),
        .CO({\count_reg[4]_i_1__0_n_0 ,\NLW_count_reg[4]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1__0_n_4 ,\count_reg[4]_i_1__0_n_5 ,\count_reg[4]_i_1__0_n_6 ,\count_reg[4]_i_1__0_n_7 }),
        .S({\count[4]_i_2__0_n_0 ,\count[4]_i_3__0_n_0 ,\count[4]_i_4__0_n_0 ,\count[4]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_out1),
        .CE(\count[0]_i_1__0_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[4]_i_1__0_n_6 ),
        .Q(count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_out1),
        .CE(\count[0]_i_1__0_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[4]_i_1__0_n_5 ),
        .Q(count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_out1),
        .CE(\count[0]_i_1__0_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[4]_i_1__0_n_4 ),
        .Q(count_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_out1),
        .CE(\count[0]_i_1__0_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[8]_i_1__0_n_7 ),
        .Q(count_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[8]_i_1__0 
       (.CI(\count_reg[4]_i_1__0_n_0 ),
        .CO({\count_reg[8]_i_1__0_n_0 ,\NLW_count_reg[8]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1__0_n_4 ,\count_reg[8]_i_1__0_n_5 ,\count_reg[8]_i_1__0_n_6 ,\count_reg[8]_i_1__0_n_7 }),
        .S({\count[8]_i_2__0_n_0 ,\count[8]_i_3__0_n_0 ,\count[8]_i_4__0_n_0 ,\count[8]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk_out1),
        .CE(\count[0]_i_1__0_n_0 ),
        .CLR(logic_rst),
        .D(\count_reg[8]_i_1__0_n_6 ),
        .Q(count_reg[9]));
  FDCE #(
    .INIT(1'b0)) 
    \flipflops_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(D),
        .Q(\flipflops_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \flipflops_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(\flipflops_reg_n_0_[0] ),
        .Q(p_0_in));
  LUT4 #(
    .INIT(16'h0004)) 
    \qsig[0]_i_1 
       (.I0(pulse_reg),
        .I1(result_reg_0),
        .I2(\qsig_reg[0] [1]),
        .I3(\qsig_reg[0] [0]),
        .O(ptr_ce));
  LUT2 #(
    .INIT(4'h2)) 
    \qsig[0]_i_3 
       (.I0(result_reg_0),
        .I1(pulse_reg),
        .O(dbcd_ce));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    result_i_1__0
       (.I0(p_0_in),
        .I1(\count[0]_i_1__0_n_0 ),
        .I2(result_reg_0),
        .O(result_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    result_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(result_i_1__0_n_0),
        .Q(result_reg_0));
endmodule

module debounce_pulse_gen
   (pulse_reg,
    dbc_result,
    ptr_ce,
    dbcd_ce,
    clk_out1,
    logic_rst,
    \qsig_reg[0] ,
    D);
  output pulse_reg;
  output dbc_result;
  output ptr_ce;
  output dbcd_ce;
  input clk_out1;
  input logic_rst;
  input [1:0]\qsig_reg[0] ;
  input [0:0]D;

  wire [0:0]D;
  wire clk_out1;
  wire dbc_result;
  wire dbcd_ce;
  wire logic_rst;
  wire ptr_ce;
  wire pulse_reg;
  wire [1:0]\qsig_reg[0] ;

  debounce_1 dbcr
       (.D(D),
        .clk_out1(clk_out1),
        .dbcd_ce(dbcd_ce),
        .logic_rst(logic_rst),
        .ptr_ce(ptr_ce),
        .pulse_reg(pulse_reg),
        .\qsig_reg[0] (\qsig_reg[0] ),
        .result_reg_0(dbc_result));
  FDCE #(
    .INIT(1'b0)) 
    pulse_reg_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(dbc_result),
        .Q(pulse_reg));
endmodule

(* ORIG_REF_NAME = "debounce_pulse_gen" *) 
module debounce_pulse_gen_0
   (pulse_reg,
    dbc_result,
    clk_out1,
    logic_rst,
    D);
  output pulse_reg;
  output dbc_result;
  input clk_out1;
  input logic_rst;
  input [0:0]D;

  wire [0:0]D;
  wire clk_out1;
  wire dbc_result;
  wire logic_rst;
  wire pulse_reg;

  debounce dbcr
       (.D(D),
        .clk_out1(clk_out1),
        .dbc_result(dbc_result),
        .logic_rst(logic_rst));
  FDCE #(
    .INIT(1'b0)) 
    pulse_reg_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(logic_rst),
        .D(dbc_result),
        .Q(pulse_reg));
endmodule

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
module dist_mem_gen_0
   (a,
    d,
    clk,
    we,
    spo);
  input [7:0]a;
  input [7:0]d;
  input clk;
  input we;
  output [7:0]spo;

  wire [7:0]a;
  wire clk;
  wire [7:0]d;
  wire [7:0]spo;
  wire we;
  wire NLW_U0_i_ce_UNCONNECTED;
  wire NLW_U0_qdpo_ce_UNCONNECTED;
  wire NLW_U0_qdpo_clk_UNCONNECTED;
  wire NLW_U0_qdpo_rst_UNCONNECTED;
  wire NLW_U0_qdpo_srst_UNCONNECTED;
  wire NLW_U0_qspo_ce_UNCONNECTED;
  wire NLW_U0_qspo_rst_UNCONNECTED;
  wire NLW_U0_qspo_srst_UNCONNECTED;
  wire [7:0]NLW_U0_dpo_UNCONNECTED;
  wire [7:0]NLW_U0_dpra_UNCONNECTED;
  wire [7:0]NLW_U0_qdpo_UNCONNECTED;
  wire [7:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "8" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "256" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "8" *) 
  (* is_du_within_envelope = "true" *) 
  dist_mem_gen_0_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[7:0]),
        .dpra(NLW_U0_dpra_UNCONNECTED[7:0]),
        .i_ce(NLW_U0_i_ce_UNCONNECTED),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[7:0]),
        .qdpo_ce(NLW_U0_qdpo_ce_UNCONNECTED),
        .qdpo_clk(NLW_U0_qdpo_clk_UNCONNECTED),
        .qdpo_rst(NLW_U0_qdpo_rst_UNCONNECTED),
        .qdpo_srst(NLW_U0_qdpo_srst_UNCONNECTED),
        .qspo(NLW_U0_qspo_UNCONNECTED[7:0]),
        .qspo_ce(NLW_U0_qspo_ce_UNCONNECTED),
        .qspo_rst(NLW_U0_qspo_rst_UNCONNECTED),
        .qspo_srst(NLW_U0_qspo_srst_UNCONNECTED),
        .spo(spo),
        .we(we));
endmodule

module register_16b
   (rst,
    a,
    \qsig_reg[15]_0 ,
    \qsig_reg[15]_1 ,
    we,
    d,
    DI,
    out_enable_OBUF,
    \qsig_reg[15]_2 ,
    S,
    \qsig_reg[3]_0 ,
    \qsig_reg[15]_3 ,
    \qsig_reg[2]_0 ,
    clk_out1,
    qsig_reg,
    O,
    pulse_reg,
    dbc_result,
    dbcd_ce,
    dbc_result_0,
    pulse_reg_1,
    reset,
    locked,
    key_IBUF,
    spo,
    RAM_data_in0);
  output rst;
  output [4:0]a;
  output \qsig_reg[15]_0 ;
  output \qsig_reg[15]_1 ;
  output we;
  output [7:0]d;
  output [0:0]DI;
  output out_enable_OBUF;
  output [0:0]\qsig_reg[15]_2 ;
  output [3:0]S;
  output [2:0]\qsig_reg[3]_0 ;
  output [1:0]\qsig_reg[15]_3 ;
  output [1:0]\qsig_reg[2]_0 ;
  input clk_out1;
  input [7:0]qsig_reg;
  input [3:0]O;
  input pulse_reg;
  input dbc_result;
  input dbcd_ce;
  input dbc_result_0;
  input pulse_reg_1;
  input reset;
  input locked;
  input [7:0]key_IBUF;
  input [7:0]spo;
  input [6:0]RAM_data_in0;

  wire [0:0]DI;
  wire [3:0]O;
  wire PC_clock_en;
  wire [6:2]PC_jump_addr;
  wire [6:0]RAM_data_in0;
  wire [3:0]S;
  wire [4:0]a;
  wire cell_zero__6;
  wire clk_out1;
  wire [7:0]d;
  wire dbc_result;
  wire dbc_result_0;
  wire dbcd_ce;
  wire jump;
  wire [7:0]key_IBUF;
  wire locked;
  wire out_enable_OBUF;
  wire out_enable_OBUF_inst_i_10_n_0;
  wire out_enable_OBUF_inst_i_11_n_0;
  wire out_enable_OBUF_inst_i_12_n_0;
  wire out_enable_OBUF_inst_i_13_n_0;
  wire out_enable_OBUF_inst_i_14_n_0;
  wire out_enable_OBUF_inst_i_15_n_0;
  wire out_enable_OBUF_inst_i_16_n_0;
  wire out_enable_OBUF_inst_i_5_n_0;
  wire out_enable_OBUF_inst_i_6_n_0;
  wire out_enable_OBUF_inst_i_7_n_0;
  wire out_enable_OBUF_inst_i_8_n_0;
  wire out_enable_OBUF_inst_i_9_n_0;
  wire pulse_reg;
  wire pulse_reg_1;
  wire \qsig[0]_i_10_n_0 ;
  wire \qsig[0]_i_15_n_0 ;
  wire \qsig[0]_i_17_n_0 ;
  wire \qsig[0]_i_19_n_0 ;
  wire \qsig[0]_i_20_n_0 ;
  wire \qsig[0]_i_21_n_0 ;
  wire \qsig[0]_i_22_n_0 ;
  wire \qsig[0]_i_23_n_0 ;
  wire \qsig[0]_i_24_n_0 ;
  wire \qsig[0]_i_4_n_0 ;
  wire \qsig[0]_i_5_n_0 ;
  wire \qsig[0]_i_6_n_0 ;
  wire \qsig[0]_i_7_n_0 ;
  wire \qsig[0]_i_8_n_0 ;
  wire \qsig[0]_i_9_n_0 ;
  wire \qsig[12]_i_2_n_0 ;
  wire \qsig[12]_i_3_n_0 ;
  wire \qsig[12]_i_4_n_0 ;
  wire \qsig[12]_i_5_n_0 ;
  wire \qsig[4]_i_10_n_0 ;
  wire \qsig[4]_i_11_n_0 ;
  wire \qsig[4]_i_12_n_0 ;
  wire \qsig[4]_i_13_n_0 ;
  wire \qsig[4]_i_14_n_0 ;
  wire \qsig[4]_i_15_n_0 ;
  wire \qsig[4]_i_16_n_0 ;
  wire \qsig[4]_i_17_n_0 ;
  wire \qsig[4]_i_18_n_0 ;
  wire \qsig[4]_i_19_n_0 ;
  wire \qsig[4]_i_2_n_0 ;
  wire \qsig[4]_i_3_n_0 ;
  wire \qsig[4]_i_4_n_0 ;
  wire \qsig[4]_i_5_n_0 ;
  wire \qsig[4]_i_9_n_0 ;
  wire \qsig[8]_i_2_n_0 ;
  wire \qsig[8]_i_3_n_0 ;
  wire \qsig[8]_i_4_n_0 ;
  wire \qsig[8]_i_5_n_0 ;
  wire [7:0]qsig_reg;
  wire \qsig_reg[0]_i_16_n_0 ;
  wire \qsig_reg[0]_i_18_n_0 ;
  wire \qsig_reg[0]_i_2_n_0 ;
  wire \qsig_reg[0]_i_2_n_4 ;
  wire \qsig_reg[0]_i_2_n_5 ;
  wire \qsig_reg[0]_i_2_n_6 ;
  wire \qsig_reg[0]_i_2_n_7 ;
  wire \qsig_reg[12]_i_1_n_4 ;
  wire \qsig_reg[12]_i_1_n_5 ;
  wire \qsig_reg[12]_i_1_n_6 ;
  wire \qsig_reg[12]_i_1_n_7 ;
  wire \qsig_reg[15]_0 ;
  wire \qsig_reg[15]_1 ;
  wire [1:0]\qsig_reg[15]_3 ;
  wire [1:0]\qsig_reg[2]_0 ;
  wire [2:0]\qsig_reg[3]_0 ;
  wire \qsig_reg[4]_i_1_n_0 ;
  wire \qsig_reg[4]_i_1_n_4 ;
  wire \qsig_reg[4]_i_1_n_5 ;
  wire \qsig_reg[4]_i_1_n_6 ;
  wire \qsig_reg[4]_i_1_n_7 ;
  wire \qsig_reg[8]_i_1_n_0 ;
  wire \qsig_reg[8]_i_1_n_4 ;
  wire \qsig_reg[8]_i_1_n_5 ;
  wire \qsig_reg[8]_i_1_n_6 ;
  wire \qsig_reg[8]_i_1_n_7 ;
  wire [15:0]qsig_reg_0;
  wire reset;
  wire rst;
  wire [7:0]spo;
  wire we;
  wire [2:0]\NLW_qsig_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_qsig_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_qsig_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_qsig_reg[8]_i_1_CO_UNCONNECTED ;

  assign \qsig_reg[15]_2 [0] = DI;
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h9)) 
    RAM_data_in0_carry_i_4
       (.I0(DI),
        .I1(spo[2]),
        .O(\qsig_reg[15]_3 [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h9)) 
    RAM_data_in0_carry_i_5
       (.I0(DI),
        .I1(spo[1]),
        .O(\qsig_reg[15]_3 [0]));
  LUT2 #(
    .INIT(4'hB)) 
    \flipflops[1]_i_1 
       (.I0(reset),
        .I1(locked),
        .O(rst));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT3 #(
    .INIT(8'h80)) 
    out_enable_OBUF_inst_i_1
       (.I0(\qsig_reg[15]_1 ),
        .I1(DI),
        .I2(\qsig_reg[15]_0 ),
        .O(out_enable_OBUF));
  LUT5 #(
    .INIT(32'h40020002)) 
    out_enable_OBUF_inst_i_10
       (.I0(qsig_reg_0[5]),
        .I1(qsig_reg_0[4]),
        .I2(qsig_reg_0[3]),
        .I3(qsig_reg_0[2]),
        .I4(qsig_reg_0[1]),
        .O(out_enable_OBUF_inst_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFBFDFAFB7B7F1F)) 
    out_enable_OBUF_inst_i_11
       (.I0(qsig_reg_0[1]),
        .I1(qsig_reg_0[6]),
        .I2(qsig_reg_0[3]),
        .I3(qsig_reg_0[5]),
        .I4(qsig_reg_0[2]),
        .I5(qsig_reg_0[4]),
        .O(out_enable_OBUF_inst_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFF7BFFBBD5BFFFF)) 
    out_enable_OBUF_inst_i_12
       (.I0(qsig_reg_0[2]),
        .I1(qsig_reg_0[1]),
        .I2(qsig_reg_0[3]),
        .I3(qsig_reg_0[4]),
        .I4(qsig_reg_0[5]),
        .I5(qsig_reg_0[6]),
        .O(out_enable_OBUF_inst_i_12_n_0));
  LUT6 #(
    .INIT(64'h1510550505501510)) 
    out_enable_OBUF_inst_i_13
       (.I0(qsig_reg_0[4]),
        .I1(qsig_reg_0[5]),
        .I2(qsig_reg_0[3]),
        .I3(qsig_reg_0[6]),
        .I4(qsig_reg_0[2]),
        .I5(qsig_reg_0[1]),
        .O(out_enable_OBUF_inst_i_13_n_0));
  LUT6 #(
    .INIT(64'h0000040405FC34CC)) 
    out_enable_OBUF_inst_i_14
       (.I0(qsig_reg_0[6]),
        .I1(qsig_reg_0[2]),
        .I2(qsig_reg_0[3]),
        .I3(qsig_reg_0[5]),
        .I4(qsig_reg_0[4]),
        .I5(qsig_reg_0[1]),
        .O(out_enable_OBUF_inst_i_14_n_0));
  LUT6 #(
    .INIT(64'h540000000B00BB10)) 
    out_enable_OBUF_inst_i_15
       (.I0(qsig_reg_0[4]),
        .I1(qsig_reg_0[3]),
        .I2(qsig_reg_0[0]),
        .I3(qsig_reg_0[5]),
        .I4(qsig_reg_0[1]),
        .I5(qsig_reg_0[2]),
        .O(out_enable_OBUF_inst_i_15_n_0));
  LUT6 #(
    .INIT(64'h4514440055244000)) 
    out_enable_OBUF_inst_i_16
       (.I0(qsig_reg_0[5]),
        .I1(qsig_reg_0[2]),
        .I2(qsig_reg_0[1]),
        .I3(qsig_reg_0[4]),
        .I4(qsig_reg_0[3]),
        .I5(qsig_reg_0[0]),
        .O(out_enable_OBUF_inst_i_16_n_0));
  LUT5 #(
    .INIT(32'h01010100)) 
    out_enable_OBUF_inst_i_2
       (.I0(out_enable_OBUF_inst_i_5_n_0),
        .I1(out_enable_OBUF_inst_i_6_n_0),
        .I2(qsig_reg_0[15]),
        .I3(out_enable_OBUF_inst_i_7_n_0),
        .I4(out_enable_OBUF_inst_i_8_n_0),
        .O(\qsig_reg[15]_1 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'hFEFEFEFF)) 
    out_enable_OBUF_inst_i_3
       (.I0(out_enable_OBUF_inst_i_5_n_0),
        .I1(out_enable_OBUF_inst_i_6_n_0),
        .I2(qsig_reg_0[15]),
        .I3(out_enable_OBUF_inst_i_9_n_0),
        .I4(out_enable_OBUF_inst_i_10_n_0),
        .O(DI));
  LUT6 #(
    .INIT(64'h0000000101010001)) 
    out_enable_OBUF_inst_i_4
       (.I0(out_enable_OBUF_inst_i_5_n_0),
        .I1(out_enable_OBUF_inst_i_6_n_0),
        .I2(qsig_reg_0[15]),
        .I3(out_enable_OBUF_inst_i_11_n_0),
        .I4(qsig_reg_0[0]),
        .I5(out_enable_OBUF_inst_i_12_n_0),
        .O(\qsig_reg[15]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    out_enable_OBUF_inst_i_5
       (.I0(qsig_reg_0[13]),
        .I1(qsig_reg_0[14]),
        .I2(qsig_reg_0[11]),
        .I3(qsig_reg_0[12]),
        .O(out_enable_OBUF_inst_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    out_enable_OBUF_inst_i_6
       (.I0(qsig_reg_0[9]),
        .I1(qsig_reg_0[10]),
        .I2(qsig_reg_0[7]),
        .I3(qsig_reg_0[8]),
        .O(out_enable_OBUF_inst_i_6_n_0));
  MUXF7 out_enable_OBUF_inst_i_7
       (.I0(out_enable_OBUF_inst_i_13_n_0),
        .I1(out_enable_OBUF_inst_i_14_n_0),
        .O(out_enable_OBUF_inst_i_7_n_0),
        .S(qsig_reg_0[0]));
  LUT6 #(
    .INIT(64'h5050B4A10A02FFAE)) 
    out_enable_OBUF_inst_i_8
       (.I0(qsig_reg_0[6]),
        .I1(qsig_reg_0[2]),
        .I2(qsig_reg_0[4]),
        .I3(qsig_reg_0[1]),
        .I4(qsig_reg_0[5]),
        .I5(qsig_reg_0[3]),
        .O(out_enable_OBUF_inst_i_8_n_0));
  MUXF7 out_enable_OBUF_inst_i_9
       (.I0(out_enable_OBUF_inst_i_15_n_0),
        .I1(out_enable_OBUF_inst_i_16_n_0),
        .O(out_enable_OBUF_inst_i_9_n_0),
        .S(qsig_reg_0[6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h9)) 
    ptr_next_carry_i_4
       (.I0(DI),
        .I1(qsig_reg[2]),
        .O(\qsig_reg[2]_0 [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h9)) 
    ptr_next_carry_i_5
       (.I0(DI),
        .I1(qsig_reg[1]),
        .O(\qsig_reg[2]_0 [0]));
  LUT4 #(
    .INIT(16'h1811)) 
    \qsig[0]_i_10 
       (.I0(qsig_reg_0[0]),
        .I1(qsig_reg_0[2]),
        .I2(qsig_reg_0[6]),
        .I3(qsig_reg_0[5]),
        .O(\qsig[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \qsig[0]_i_11 
       (.I0(\qsig_reg[0]_i_18_n_0 ),
        .I1(out_enable_OBUF_inst_i_8_n_0),
        .I2(out_enable_OBUF_inst_i_7_n_0),
        .I3(qsig_reg_0[15]),
        .I4(out_enable_OBUF_inst_i_6_n_0),
        .I5(out_enable_OBUF_inst_i_5_n_0),
        .O(jump));
  LUT5 #(
    .INIT(32'h00000001)) 
    \qsig[0]_i_12 
       (.I0(spo[5]),
        .I1(spo[4]),
        .I2(spo[6]),
        .I3(spo[7]),
        .I4(\qsig[0]_i_19_n_0 ),
        .O(cell_zero__6));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \qsig[0]_i_13 
       (.I0(qsig_reg_0[5]),
        .I1(qsig_reg_0[1]),
        .I2(qsig_reg_0[15]),
        .I3(out_enable_OBUF_inst_i_6_n_0),
        .I4(out_enable_OBUF_inst_i_5_n_0),
        .I5(\qsig[0]_i_20_n_0 ),
        .O(PC_jump_addr[3]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \qsig[0]_i_14 
       (.I0(\qsig[0]_i_21_n_0 ),
        .I1(qsig_reg_0[15]),
        .I2(out_enable_OBUF_inst_i_6_n_0),
        .I3(out_enable_OBUF_inst_i_5_n_0),
        .I4(\qsig[0]_i_22_n_0 ),
        .O(PC_jump_addr[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \qsig[0]_i_15 
       (.I0(qsig_reg_0[2]),
        .I1(qsig_reg_0[0]),
        .O(\qsig[0]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h5D)) 
    \qsig[0]_i_17 
       (.I0(qsig_reg_0[3]),
        .I1(qsig_reg_0[6]),
        .I2(qsig_reg_0[5]),
        .O(\qsig[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \qsig[0]_i_19 
       (.I0(spo[2]),
        .I1(spo[3]),
        .I2(spo[0]),
        .I3(spo[1]),
        .O(\qsig[0]_i_19_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hA2AAA2AAAAAAA2AA)) 
    \qsig[0]_i_1__0 
       (.I0(dbcd_ce),
        .I1(\qsig_reg[15]_1 ),
        .I2(DI),
        .I3(\qsig_reg[15]_0 ),
        .I4(dbc_result_0),
        .I5(pulse_reg_1),
        .O(PC_clock_en));
  LUT5 #(
    .INIT(32'hFBFFEFFD)) 
    \qsig[0]_i_20 
       (.I0(qsig_reg_0[4]),
        .I1(qsig_reg_0[2]),
        .I2(qsig_reg_0[6]),
        .I3(qsig_reg_0[3]),
        .I4(qsig_reg_0[0]),
        .O(\qsig[0]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hF3EF)) 
    \qsig[0]_i_21 
       (.I0(qsig_reg_0[6]),
        .I1(qsig_reg_0[5]),
        .I2(qsig_reg_0[4]),
        .I3(qsig_reg_0[3]),
        .O(\qsig[0]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h11018001)) 
    \qsig[0]_i_22 
       (.I0(qsig_reg_0[0]),
        .I1(qsig_reg_0[2]),
        .I2(qsig_reg_0[3]),
        .I3(qsig_reg_0[1]),
        .I4(qsig_reg_0[6]),
        .O(\qsig[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \qsig[0]_i_23 
       (.I0(qsig_reg_0[15]),
        .I1(out_enable_OBUF_inst_i_6_n_0),
        .I2(out_enable_OBUF_inst_i_5_n_0),
        .I3(qsig_reg_0[6]),
        .I4(qsig_reg_0[4]),
        .I5(qsig_reg_0[5]),
        .O(\qsig[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000041)) 
    \qsig[0]_i_24 
       (.I0(qsig_reg_0[4]),
        .I1(qsig_reg_0[5]),
        .I2(qsig_reg_0[6]),
        .I3(qsig_reg_0[15]),
        .I4(out_enable_OBUF_inst_i_6_n_0),
        .I5(out_enable_OBUF_inst_i_5_n_0),
        .O(\qsig[0]_i_24_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \qsig[0]_i_3__0 
       (.I0(DI),
        .I1(qsig_reg[3]),
        .O(\qsig_reg[3]_0 [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h8FFFFF8F80000080)) 
    \qsig[0]_i_4 
       (.I0(\qsig[0]_i_9_n_0 ),
        .I1(\qsig[0]_i_10_n_0 ),
        .I2(jump),
        .I3(DI),
        .I4(cell_zero__6),
        .I5(qsig_reg_0[0]),
        .O(\qsig[0]_i_4_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \qsig[0]_i_4__0 
       (.I0(DI),
        .I1(qsig_reg[2]),
        .O(\qsig_reg[3]_0 [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEFFFFFEF20000020)) 
    \qsig[0]_i_5 
       (.I0(PC_jump_addr[3]),
        .I1(\qsig_reg[15]_1 ),
        .I2(\qsig_reg[15]_0 ),
        .I3(DI),
        .I4(cell_zero__6),
        .I5(qsig_reg_0[3]),
        .O(\qsig[0]_i_5_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \qsig[0]_i_5__0 
       (.I0(DI),
        .I1(qsig_reg[1]),
        .O(\qsig_reg[3]_0 [0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEFFFFFEF20000020)) 
    \qsig[0]_i_6 
       (.I0(PC_jump_addr[2]),
        .I1(\qsig_reg[15]_1 ),
        .I2(\qsig_reg[15]_0 ),
        .I3(DI),
        .I4(cell_zero__6),
        .I5(qsig_reg_0[2]),
        .O(\qsig[0]_i_6_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h4FFFFF4F00000000)) 
    \qsig[0]_i_7 
       (.I0(\qsig[0]_i_15_n_0 ),
        .I1(\qsig_reg[0]_i_16_n_0 ),
        .I2(jump),
        .I3(DI),
        .I4(cell_zero__6),
        .I5(qsig_reg_0[1]),
        .O(\qsig[0]_i_7_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hC05555C055555555)) 
    \qsig[0]_i_8 
       (.I0(qsig_reg_0[0]),
        .I1(\qsig[0]_i_10_n_0 ),
        .I2(\qsig[0]_i_9_n_0 ),
        .I3(cell_zero__6),
        .I4(DI),
        .I5(jump),
        .O(\qsig[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \qsig[0]_i_9 
       (.I0(qsig_reg_0[4]),
        .I1(\qsig[0]_i_17_n_0 ),
        .I2(out_enable_OBUF_inst_i_5_n_0),
        .I3(out_enable_OBUF_inst_i_6_n_0),
        .I4(qsig_reg_0[15]),
        .I5(qsig_reg_0[1]),
        .O(\qsig[0]_i_9_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'hAAAA28AA)) 
    \qsig[12]_i_2 
       (.I0(qsig_reg_0[15]),
        .I1(cell_zero__6),
        .I2(DI),
        .I3(\qsig_reg[15]_0 ),
        .I4(\qsig_reg[15]_1 ),
        .O(\qsig[12]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'hAAAA28AA)) 
    \qsig[12]_i_3 
       (.I0(qsig_reg_0[14]),
        .I1(cell_zero__6),
        .I2(DI),
        .I3(\qsig_reg[15]_0 ),
        .I4(\qsig_reg[15]_1 ),
        .O(\qsig[12]_i_3_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'hAAAA28AA)) 
    \qsig[12]_i_4 
       (.I0(qsig_reg_0[13]),
        .I1(cell_zero__6),
        .I2(DI),
        .I3(\qsig_reg[15]_0 ),
        .I4(\qsig_reg[15]_1 ),
        .O(\qsig[12]_i_4_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEFFFFFEF20000020)) 
    \qsig[12]_i_5 
       (.I0(PC_jump_addr[6]),
        .I1(\qsig_reg[15]_1 ),
        .I2(\qsig_reg[15]_0 ),
        .I3(DI),
        .I4(cell_zero__6),
        .I5(qsig_reg_0[12]),
        .O(\qsig[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \qsig[4]_i_10 
       (.I0(qsig_reg_0[3]),
        .I1(qsig_reg_0[6]),
        .I2(qsig_reg_0[5]),
        .I3(qsig_reg_0[1]),
        .O(\qsig[4]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \qsig[4]_i_11 
       (.I0(qsig_reg_0[2]),
        .I1(qsig_reg_0[15]),
        .I2(out_enable_OBUF_inst_i_6_n_0),
        .I3(out_enable_OBUF_inst_i_5_n_0),
        .I4(\qsig[4]_i_15_n_0 ),
        .O(\qsig[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \qsig[4]_i_12 
       (.I0(qsig_reg_0[15]),
        .I1(out_enable_OBUF_inst_i_6_n_0),
        .I2(out_enable_OBUF_inst_i_5_n_0),
        .I3(qsig_reg_0[6]),
        .I4(\qsig[4]_i_16_n_0 ),
        .I5(\qsig[4]_i_17_n_0 ),
        .O(\qsig[4]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \qsig[4]_i_13 
       (.I0(qsig_reg_0[15]),
        .I1(out_enable_OBUF_inst_i_6_n_0),
        .I2(out_enable_OBUF_inst_i_5_n_0),
        .I3(qsig_reg_0[2]),
        .I4(\qsig[4]_i_18_n_0 ),
        .O(\qsig[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \qsig[4]_i_14 
       (.I0(\qsig[4]_i_17_n_0 ),
        .I1(qsig_reg_0[6]),
        .I2(out_enable_OBUF_inst_i_5_n_0),
        .I3(out_enable_OBUF_inst_i_6_n_0),
        .I4(qsig_reg_0[15]),
        .I5(\qsig[4]_i_19_n_0 ),
        .O(\qsig[4]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE7FF7)) 
    \qsig[4]_i_15 
       (.I0(qsig_reg_0[3]),
        .I1(qsig_reg_0[1]),
        .I2(qsig_reg_0[6]),
        .I3(qsig_reg_0[5]),
        .I4(qsig_reg_0[4]),
        .O(\qsig[4]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \qsig[4]_i_16 
       (.I0(qsig_reg_0[3]),
        .I1(qsig_reg_0[2]),
        .O(\qsig[4]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \qsig[4]_i_17 
       (.I0(qsig_reg_0[4]),
        .I1(qsig_reg_0[5]),
        .O(\qsig[4]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFDF)) 
    \qsig[4]_i_18 
       (.I0(qsig_reg_0[1]),
        .I1(qsig_reg_0[4]),
        .I2(qsig_reg_0[3]),
        .I3(qsig_reg_0[5]),
        .I4(qsig_reg_0[6]),
        .O(\qsig[4]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h42)) 
    \qsig[4]_i_19 
       (.I0(qsig_reg_0[1]),
        .I1(qsig_reg_0[2]),
        .I2(qsig_reg_0[3]),
        .O(\qsig[4]_i_19_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEFFFFFEF20000020)) 
    \qsig[4]_i_2 
       (.I0(PC_jump_addr[6]),
        .I1(\qsig_reg[15]_1 ),
        .I2(\qsig_reg[15]_0 ),
        .I3(DI),
        .I4(cell_zero__6),
        .I5(qsig_reg_0[7]),
        .O(\qsig[4]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \qsig[4]_i_2__0 
       (.I0(DI),
        .I1(qsig_reg[7]),
        .O(S[3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEFFFFFEF20000020)) 
    \qsig[4]_i_3 
       (.I0(PC_jump_addr[6]),
        .I1(\qsig_reg[15]_1 ),
        .I2(\qsig_reg[15]_0 ),
        .I3(DI),
        .I4(cell_zero__6),
        .I5(qsig_reg_0[6]),
        .O(\qsig[4]_i_3_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \qsig[4]_i_3__0 
       (.I0(DI),
        .I1(qsig_reg[6]),
        .O(S[2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEFFFFFEF20000020)) 
    \qsig[4]_i_4 
       (.I0(PC_jump_addr[5]),
        .I1(\qsig_reg[15]_1 ),
        .I2(\qsig_reg[15]_0 ),
        .I3(DI),
        .I4(cell_zero__6),
        .I5(qsig_reg_0[5]),
        .O(\qsig[4]_i_4_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \qsig[4]_i_4__0 
       (.I0(DI),
        .I1(qsig_reg[5]),
        .O(S[1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEFFFFFEF20000020)) 
    \qsig[4]_i_5 
       (.I0(PC_jump_addr[4]),
        .I1(\qsig_reg[15]_1 ),
        .I2(\qsig_reg[15]_0 ),
        .I3(DI),
        .I4(cell_zero__6),
        .I5(qsig_reg_0[4]),
        .O(\qsig[4]_i_5_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \qsig[4]_i_5__0 
       (.I0(DI),
        .I1(qsig_reg[4]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \qsig[4]_i_6 
       (.I0(\qsig[4]_i_9_n_0 ),
        .I1(qsig_reg_0[2]),
        .I2(out_enable_OBUF_inst_i_5_n_0),
        .I3(out_enable_OBUF_inst_i_6_n_0),
        .I4(qsig_reg_0[15]),
        .I5(\qsig[4]_i_10_n_0 ),
        .O(PC_jump_addr[6]));
  LUT2 #(
    .INIT(4'hE)) 
    \qsig[4]_i_9 
       (.I0(qsig_reg_0[0]),
        .I1(qsig_reg_0[4]),
        .O(\qsig[4]_i_9_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEFFFFFEF20000020)) 
    \qsig[8]_i_2 
       (.I0(PC_jump_addr[6]),
        .I1(\qsig_reg[15]_1 ),
        .I2(\qsig_reg[15]_0 ),
        .I3(DI),
        .I4(cell_zero__6),
        .I5(qsig_reg_0[11]),
        .O(\qsig[8]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEFFFFFEF20000020)) 
    \qsig[8]_i_3 
       (.I0(PC_jump_addr[6]),
        .I1(\qsig_reg[15]_1 ),
        .I2(\qsig_reg[15]_0 ),
        .I3(DI),
        .I4(cell_zero__6),
        .I5(qsig_reg_0[10]),
        .O(\qsig[8]_i_3_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEFFFFFEF20000020)) 
    \qsig[8]_i_4 
       (.I0(PC_jump_addr[6]),
        .I1(\qsig_reg[15]_1 ),
        .I2(\qsig_reg[15]_0 ),
        .I3(DI),
        .I4(cell_zero__6),
        .I5(qsig_reg_0[9]),
        .O(\qsig[8]_i_4_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hEFFFFFEF20000020)) 
    \qsig[8]_i_5 
       (.I0(PC_jump_addr[6]),
        .I1(\qsig_reg[15]_1 ),
        .I2(\qsig_reg[15]_0 ),
        .I3(DI),
        .I4(cell_zero__6),
        .I5(qsig_reg_0[8]),
        .O(\qsig[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[0] 
       (.C(clk_out1),
        .CE(PC_clock_en),
        .D(\qsig_reg[0]_i_2_n_7 ),
        .Q(qsig_reg_0[0]),
        .R(rst));
  MUXF7 \qsig_reg[0]_i_16 
       (.I0(\qsig[0]_i_23_n_0 ),
        .I1(\qsig[0]_i_24_n_0 ),
        .O(\qsig_reg[0]_i_16_n_0 ),
        .S(qsig_reg_0[3]));
  MUXF7 \qsig_reg[0]_i_18 
       (.I0(out_enable_OBUF_inst_i_11_n_0),
        .I1(out_enable_OBUF_inst_i_12_n_0),
        .O(\qsig_reg[0]_i_18_n_0 ),
        .S(qsig_reg_0[0]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \qsig_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\qsig_reg[0]_i_2_n_0 ,\NLW_qsig_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\qsig[0]_i_4_n_0 }),
        .O({\qsig_reg[0]_i_2_n_4 ,\qsig_reg[0]_i_2_n_5 ,\qsig_reg[0]_i_2_n_6 ,\qsig_reg[0]_i_2_n_7 }),
        .S({\qsig[0]_i_5_n_0 ,\qsig[0]_i_6_n_0 ,\qsig[0]_i_7_n_0 ,\qsig[0]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[10] 
       (.C(clk_out1),
        .CE(PC_clock_en),
        .D(\qsig_reg[8]_i_1_n_5 ),
        .Q(qsig_reg_0[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[11] 
       (.C(clk_out1),
        .CE(PC_clock_en),
        .D(\qsig_reg[8]_i_1_n_4 ),
        .Q(qsig_reg_0[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[12] 
       (.C(clk_out1),
        .CE(PC_clock_en),
        .D(\qsig_reg[12]_i_1_n_7 ),
        .Q(qsig_reg_0[12]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \qsig_reg[12]_i_1 
       (.CI(\qsig_reg[8]_i_1_n_0 ),
        .CO(\NLW_qsig_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\qsig_reg[12]_i_1_n_4 ,\qsig_reg[12]_i_1_n_5 ,\qsig_reg[12]_i_1_n_6 ,\qsig_reg[12]_i_1_n_7 }),
        .S({\qsig[12]_i_2_n_0 ,\qsig[12]_i_3_n_0 ,\qsig[12]_i_4_n_0 ,\qsig[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[13] 
       (.C(clk_out1),
        .CE(PC_clock_en),
        .D(\qsig_reg[12]_i_1_n_6 ),
        .Q(qsig_reg_0[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[14] 
       (.C(clk_out1),
        .CE(PC_clock_en),
        .D(\qsig_reg[12]_i_1_n_5 ),
        .Q(qsig_reg_0[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[15] 
       (.C(clk_out1),
        .CE(PC_clock_en),
        .D(\qsig_reg[12]_i_1_n_4 ),
        .Q(qsig_reg_0[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[1] 
       (.C(clk_out1),
        .CE(PC_clock_en),
        .D(\qsig_reg[0]_i_2_n_6 ),
        .Q(qsig_reg_0[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[2] 
       (.C(clk_out1),
        .CE(PC_clock_en),
        .D(\qsig_reg[0]_i_2_n_5 ),
        .Q(qsig_reg_0[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[3] 
       (.C(clk_out1),
        .CE(PC_clock_en),
        .D(\qsig_reg[0]_i_2_n_4 ),
        .Q(qsig_reg_0[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[4] 
       (.C(clk_out1),
        .CE(PC_clock_en),
        .D(\qsig_reg[4]_i_1_n_7 ),
        .Q(qsig_reg_0[4]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \qsig_reg[4]_i_1 
       (.CI(\qsig_reg[0]_i_2_n_0 ),
        .CO({\qsig_reg[4]_i_1_n_0 ,\NLW_qsig_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\qsig_reg[4]_i_1_n_4 ,\qsig_reg[4]_i_1_n_5 ,\qsig_reg[4]_i_1_n_6 ,\qsig_reg[4]_i_1_n_7 }),
        .S({\qsig[4]_i_2_n_0 ,\qsig[4]_i_3_n_0 ,\qsig[4]_i_4_n_0 ,\qsig[4]_i_5_n_0 }));
  MUXF7 \qsig_reg[4]_i_7 
       (.I0(\qsig[4]_i_11_n_0 ),
        .I1(\qsig[4]_i_12_n_0 ),
        .O(PC_jump_addr[5]),
        .S(qsig_reg_0[0]));
  MUXF7 \qsig_reg[4]_i_8 
       (.I0(\qsig[4]_i_13_n_0 ),
        .I1(\qsig[4]_i_14_n_0 ),
        .O(PC_jump_addr[4]),
        .S(qsig_reg_0[0]));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[5] 
       (.C(clk_out1),
        .CE(PC_clock_en),
        .D(\qsig_reg[4]_i_1_n_6 ),
        .Q(qsig_reg_0[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[6] 
       (.C(clk_out1),
        .CE(PC_clock_en),
        .D(\qsig_reg[4]_i_1_n_5 ),
        .Q(qsig_reg_0[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[7] 
       (.C(clk_out1),
        .CE(PC_clock_en),
        .D(\qsig_reg[4]_i_1_n_4 ),
        .Q(qsig_reg_0[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[8] 
       (.C(clk_out1),
        .CE(PC_clock_en),
        .D(\qsig_reg[8]_i_1_n_7 ),
        .Q(qsig_reg_0[8]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \qsig_reg[8]_i_1 
       (.CI(\qsig_reg[4]_i_1_n_0 ),
        .CO({\qsig_reg[8]_i_1_n_0 ,\NLW_qsig_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\qsig_reg[8]_i_1_n_4 ,\qsig_reg[8]_i_1_n_5 ,\qsig_reg[8]_i_1_n_6 ,\qsig_reg[8]_i_1_n_7 }),
        .S({\qsig[8]_i_2_n_0 ,\qsig[8]_i_3_n_0 ,\qsig[8]_i_4_n_0 ,\qsig[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[9] 
       (.C(clk_out1),
        .CE(PC_clock_en),
        .D(\qsig_reg[8]_i_1_n_6 ),
        .Q(qsig_reg_0[9]),
        .R(rst));
  LUT3 #(
    .INIT(8'hB8)) 
    work_mem_i_10
       (.I0(key_IBUF[6]),
        .I1(\qsig_reg[15]_0 ),
        .I2(RAM_data_in0[5]),
        .O(d[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    work_mem_i_11
       (.I0(key_IBUF[5]),
        .I1(\qsig_reg[15]_0 ),
        .I2(RAM_data_in0[4]),
        .O(d[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    work_mem_i_12
       (.I0(key_IBUF[4]),
        .I1(\qsig_reg[15]_0 ),
        .I2(RAM_data_in0[3]),
        .O(d[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    work_mem_i_13
       (.I0(key_IBUF[3]),
        .I1(\qsig_reg[15]_0 ),
        .I2(RAM_data_in0[2]),
        .O(d[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    work_mem_i_14
       (.I0(key_IBUF[2]),
        .I1(\qsig_reg[15]_0 ),
        .I2(RAM_data_in0[1]),
        .O(d[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    work_mem_i_15
       (.I0(key_IBUF[1]),
        .I1(\qsig_reg[15]_0 ),
        .I2(RAM_data_in0[0]),
        .O(d[1]));
  LUT3 #(
    .INIT(8'h8B)) 
    work_mem_i_16
       (.I0(key_IBUF[0]),
        .I1(\qsig_reg[15]_0 ),
        .I2(spo[0]),
        .O(d[0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'h004C0000)) 
    work_mem_i_17
       (.I0(DI),
        .I1(\qsig_reg[15]_1 ),
        .I2(\qsig_reg[15]_0 ),
        .I3(pulse_reg),
        .I4(dbc_result),
        .O(we));
  LUT5 #(
    .INIT(32'hAAAAAAAC)) 
    work_mem_i_4
       (.I0(qsig_reg[4]),
        .I1(O[3]),
        .I2(clk_out1),
        .I3(\qsig_reg[15]_0 ),
        .I4(\qsig_reg[15]_1 ),
        .O(a[4]));
  LUT5 #(
    .INIT(32'hAAAAAAAC)) 
    work_mem_i_5
       (.I0(qsig_reg[3]),
        .I1(O[2]),
        .I2(clk_out1),
        .I3(\qsig_reg[15]_0 ),
        .I4(\qsig_reg[15]_1 ),
        .O(a[3]));
  LUT5 #(
    .INIT(32'hAAAAAAAC)) 
    work_mem_i_6
       (.I0(qsig_reg[2]),
        .I1(O[1]),
        .I2(clk_out1),
        .I3(\qsig_reg[15]_0 ),
        .I4(\qsig_reg[15]_1 ),
        .O(a[2]));
  LUT5 #(
    .INIT(32'hAAAAAAAC)) 
    work_mem_i_7
       (.I0(qsig_reg[1]),
        .I1(O[0]),
        .I2(clk_out1),
        .I3(\qsig_reg[15]_0 ),
        .I4(\qsig_reg[15]_1 ),
        .O(a[1]));
  LUT4 #(
    .INIT(16'hAAA9)) 
    work_mem_i_8
       (.I0(qsig_reg[0]),
        .I1(clk_out1),
        .I2(\qsig_reg[15]_0 ),
        .I3(\qsig_reg[15]_1 ),
        .O(a[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    work_mem_i_9
       (.I0(key_IBUF[7]),
        .I1(\qsig_reg[15]_0 ),
        .I2(RAM_data_in0[6]),
        .O(d[7]));
endmodule

(* ORIG_REF_NAME = "register_16b" *) 
module register_16b_2
   (qsig_reg,
    a,
    \qsig_reg[3]_0 ,
    \qsig_reg[6]_0 ,
    \qsig_reg[7]_0 ,
    ptr_ce,
    clk_out1,
    O,
    work_mem,
    work_mem_0,
    \qsig_reg[3]_1 ,
    S);
  output [7:0]qsig_reg;
  output [2:0]a;
  output [1:0]\qsig_reg[3]_0 ;
  output [2:0]\qsig_reg[6]_0 ;
  input \qsig_reg[7]_0 ;
  input ptr_ce;
  input clk_out1;
  input [2:0]O;
  input work_mem;
  input work_mem_0;
  input [2:0]\qsig_reg[3]_1 ;
  input [3:0]S;

  wire [2:0]O;
  wire [3:0]S;
  wire [2:0]a;
  wire clk_out1;
  wire ptr_ce;
  wire \qsig[0]_i_6__0_n_0 ;
  wire [7:0]qsig_reg;
  wire \qsig_reg[0]_i_2__0_n_0 ;
  wire \qsig_reg[0]_i_2__0_n_4 ;
  wire \qsig_reg[0]_i_2__0_n_5 ;
  wire \qsig_reg[0]_i_2__0_n_6 ;
  wire \qsig_reg[0]_i_2__0_n_7 ;
  wire [1:0]\qsig_reg[3]_0 ;
  wire [2:0]\qsig_reg[3]_1 ;
  wire \qsig_reg[4]_i_1__0_n_4 ;
  wire \qsig_reg[4]_i_1__0_n_5 ;
  wire \qsig_reg[4]_i_1__0_n_6 ;
  wire \qsig_reg[4]_i_1__0_n_7 ;
  wire [2:0]\qsig_reg[6]_0 ;
  wire \qsig_reg[7]_0 ;
  wire work_mem;
  wire work_mem_0;
  wire [2:0]\NLW_qsig_reg[0]_i_2__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_qsig_reg[4]_i_1__0_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h9)) 
    ptr_next_carry__0_i_1
       (.I0(qsig_reg[6]),
        .I1(qsig_reg[7]),
        .O(\qsig_reg[6]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    ptr_next_carry__0_i_2
       (.I0(qsig_reg[5]),
        .I1(qsig_reg[6]),
        .O(\qsig_reg[6]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    ptr_next_carry__0_i_3
       (.I0(qsig_reg[4]),
        .I1(qsig_reg[5]),
        .O(\qsig_reg[6]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    ptr_next_carry_i_2
       (.I0(qsig_reg[3]),
        .I1(qsig_reg[4]),
        .O(\qsig_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    ptr_next_carry_i_3
       (.I0(qsig_reg[2]),
        .I1(qsig_reg[3]),
        .O(\qsig_reg[3]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    \qsig[0]_i_6__0 
       (.I0(qsig_reg[0]),
        .O(\qsig[0]_i_6__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[0] 
       (.C(clk_out1),
        .CE(ptr_ce),
        .D(\qsig_reg[0]_i_2__0_n_7 ),
        .Q(qsig_reg[0]),
        .R(\qsig_reg[7]_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \qsig_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\qsig_reg[0]_i_2__0_n_0 ,\NLW_qsig_reg[0]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({qsig_reg[3:1],1'b1}),
        .O({\qsig_reg[0]_i_2__0_n_4 ,\qsig_reg[0]_i_2__0_n_5 ,\qsig_reg[0]_i_2__0_n_6 ,\qsig_reg[0]_i_2__0_n_7 }),
        .S({\qsig_reg[3]_1 ,\qsig[0]_i_6__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[1] 
       (.C(clk_out1),
        .CE(ptr_ce),
        .D(\qsig_reg[0]_i_2__0_n_6 ),
        .Q(qsig_reg[1]),
        .R(\qsig_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[2] 
       (.C(clk_out1),
        .CE(ptr_ce),
        .D(\qsig_reg[0]_i_2__0_n_5 ),
        .Q(qsig_reg[2]),
        .R(\qsig_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[3] 
       (.C(clk_out1),
        .CE(ptr_ce),
        .D(\qsig_reg[0]_i_2__0_n_4 ),
        .Q(qsig_reg[3]),
        .R(\qsig_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[4] 
       (.C(clk_out1),
        .CE(ptr_ce),
        .D(\qsig_reg[4]_i_1__0_n_7 ),
        .Q(qsig_reg[4]),
        .R(\qsig_reg[7]_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \qsig_reg[4]_i_1__0 
       (.CI(\qsig_reg[0]_i_2__0_n_0 ),
        .CO(\NLW_qsig_reg[4]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,qsig_reg[6:4]}),
        .O({\qsig_reg[4]_i_1__0_n_4 ,\qsig_reg[4]_i_1__0_n_5 ,\qsig_reg[4]_i_1__0_n_6 ,\qsig_reg[4]_i_1__0_n_7 }),
        .S(S));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[5] 
       (.C(clk_out1),
        .CE(ptr_ce),
        .D(\qsig_reg[4]_i_1__0_n_6 ),
        .Q(qsig_reg[5]),
        .R(\qsig_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[6] 
       (.C(clk_out1),
        .CE(ptr_ce),
        .D(\qsig_reg[4]_i_1__0_n_5 ),
        .Q(qsig_reg[6]),
        .R(\qsig_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \qsig_reg[7] 
       (.C(clk_out1),
        .CE(ptr_ce),
        .D(\qsig_reg[4]_i_1__0_n_4 ),
        .Q(qsig_reg[7]),
        .R(\qsig_reg[7]_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAC)) 
    work_mem_i_1
       (.I0(qsig_reg[7]),
        .I1(O[2]),
        .I2(clk_out1),
        .I3(work_mem),
        .I4(work_mem_0),
        .O(a[2]));
  LUT5 #(
    .INIT(32'hAAAAAAAC)) 
    work_mem_i_2
       (.I0(qsig_reg[6]),
        .I1(O[1]),
        .I2(clk_out1),
        .I3(work_mem),
        .I4(work_mem_0),
        .O(a[1]));
  LUT5 #(
    .INIT(32'hAAAAAAAC)) 
    work_mem_i_3
       (.I0(qsig_reg[5]),
        .I1(O[0]),
        .I2(clk_out1),
        .I3(work_mem),
        .I4(work_mem_0),
        .O(a[0]));
endmodule

(* ECO_CHECKSUM = "2a85991e" *) 
(* NotValidForBitStream *)
module top
   (clk,
    rst,
    input_valid,
    ce,
    key,
    out_enable,
    char_out);
  input clk;
  input rst;
  input input_valid;
  input ce;
  input [7:0]key;
  output out_enable;
  output [7:0]char_out;

  wire [2:1]ROM_out;
  wire ce;
  wire ce_IBUF;
  wire [7:0]char_out;
  wire [7:0]char_out_OBUF;
  (* IBUF_LOW_PWR *) wire clk;
  wire clk_50mhz;
  wire dbc_result;
  wire dbc_result_0;
  wire dbcd_ce;
  wire input_valid;
  wire input_valid_IBUF;
  wire [7:0]key;
  wire [7:0]key_IBUF;
  wire locked;
  wire logic_rst;
  wire out_enable;
  wire out_enable_OBUF;
  wire ptr_ce;
  wire pulse_reg;
  wire pulse_reg_1;
  wire rst;
  wire rst_IBUF;

initial begin
 $sdf_annotate("top_tb_time_impl.sdf",,,,"tool_control");
end
  ISA_top ISA
       (.clk_out1(clk_50mhz),
        .dbc_result(dbc_result),
        .dbc_result_0(dbc_result_0),
        .dbcd_ce(dbcd_ce),
        .key_IBUF(key_IBUF),
        .locked(locked),
        .logic_rst(logic_rst),
        .out_enable_OBUF(out_enable_OBUF),
        .ptr_ce(ptr_ce),
        .pulse_reg(pulse_reg),
        .pulse_reg_1(pulse_reg_1),
        .\qsig_reg[15] (ROM_out),
        .reset(rst_IBUF),
        .spo(char_out_OBUF));
  IBUF ce_IBUF_inst
       (.I(ce),
        .O(ce_IBUF));
  debounce_pulse_gen ce_dbcr
       (.D(ce_IBUF),
        .clk_out1(clk_50mhz),
        .dbc_result(dbc_result),
        .dbcd_ce(dbcd_ce),
        .logic_rst(logic_rst),
        .ptr_ce(ptr_ce),
        .pulse_reg(pulse_reg),
        .\qsig_reg[0] (ROM_out));
  OBUF \char_out_OBUF[0]_inst 
       (.I(char_out_OBUF[0]),
        .O(char_out[0]));
  OBUF \char_out_OBUF[1]_inst 
       (.I(char_out_OBUF[1]),
        .O(char_out[1]));
  OBUF \char_out_OBUF[2]_inst 
       (.I(char_out_OBUF[2]),
        .O(char_out[2]));
  OBUF \char_out_OBUF[3]_inst 
       (.I(char_out_OBUF[3]),
        .O(char_out[3]));
  OBUF \char_out_OBUF[4]_inst 
       (.I(char_out_OBUF[4]),
        .O(char_out[4]));
  OBUF \char_out_OBUF[5]_inst 
       (.I(char_out_OBUF[5]),
        .O(char_out[5]));
  OBUF \char_out_OBUF[6]_inst 
       (.I(char_out_OBUF[6]),
        .O(char_out[6]));
  OBUF \char_out_OBUF[7]_inst 
       (.I(char_out_OBUF[7]),
        .O(char_out[7]));
  (* IMPORTED_FROM = "c:/Users/Jim/Desktop/Code/BrainFuck/VHDL/BFISA/BFISA.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* syn_black_box = "TRUE" *) 
  clk_wiz_0 clk_divider
       (.clk_in1(clk),
        .clk_out1(clk_50mhz),
        .locked(locked),
        .reset(rst_IBUF));
  IBUF input_valid_IBUF_inst
       (.I(input_valid),
        .O(input_valid_IBUF));
  debounce_pulse_gen_0 iv_dbcr
       (.D(input_valid_IBUF),
        .clk_out1(clk_50mhz),
        .dbc_result(dbc_result_0),
        .logic_rst(logic_rst),
        .pulse_reg(pulse_reg_1));
  IBUF \key_IBUF[0]_inst 
       (.I(key[0]),
        .O(key_IBUF[0]));
  IBUF \key_IBUF[1]_inst 
       (.I(key[1]),
        .O(key_IBUF[1]));
  IBUF \key_IBUF[2]_inst 
       (.I(key[2]),
        .O(key_IBUF[2]));
  IBUF \key_IBUF[3]_inst 
       (.I(key[3]),
        .O(key_IBUF[3]));
  IBUF \key_IBUF[4]_inst 
       (.I(key[4]),
        .O(key_IBUF[4]));
  IBUF \key_IBUF[5]_inst 
       (.I(key[5]),
        .O(key_IBUF[5]));
  IBUF \key_IBUF[6]_inst 
       (.I(key[6]),
        .O(key_IBUF[6]));
  IBUF \key_IBUF[7]_inst 
       (.I(key[7]),
        .O(key_IBUF[7]));
  OBUF out_enable_OBUF_inst
       (.I(out_enable_OBUF),
        .O(out_enable));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
AWk2+F/LLIwJ/3H70MT+p73z+MaZAUnylB9xu/zfH66xX8dAaOizqpslZkE4MXrWhxdHpghP7sIj
kwvWqhJ3gA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
f3tnX2YCmmij/BT714m5fPTuG3pr/Sp1bWD1FpCFiwTkcUFmqMNcr7abCn+qa2HUp1VAs9a1kY1i
yU68W3C4ARAx1rnlow3CtMBZ+4vG1QDA+Ciu5T+MSJsiWTAoMU3jJunULwD6zEC9h/Y3bBf+ZNGj
RvbKgHQFYSq+EYUzleQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C6xRmzJVnvguMc3Lt5tkoyg5+/u1VuxRooNBOmgUvD6c148xX9CV/zz4fw53vbCzqUg3WYMPAs5M
/tMrhPMrX5cqjMMHbC20NaFxsFGCfdbN+1Jiu6Ffu0obXLvBu7UGBCEaDTCY0wST3S+7NZ+HnAat
RIt5cVRmnWtLEj9MP8SxAk019LKc3+2AUY0eWFhWbTGvNoTLcRFak8vqIx8KBuqhc16O50jjNmM3
PJltfibMKzAmWpsf6xiOkaD+BvARuccAoYGgANLBAEQdJUza98//SuTN0KLZKbFSmy2WI5iAzkxJ
bhH9hPn6Ks1JkH9+j61hMSpdxSh8rM8X8Dppxw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pefxdCU7VwYHa7diZaenheQOVCFpIvDlVp0qUtYsCnfw3IK+d5+k4O7xc5MWvQPeJpwUWNg+c9U8
PcbHo1enWoVg9o1V4U5fg7wxYqKmubBjgGF3yJ5FYGt6FeiD7zcnIJcaP2puAYDdVnxtiJnNmFz2
OQ7UQsleDpBQo3E4NEsbtqgSaopjHREMjI4yjJ9l5XZYNPCWUzUV/mSGX/kF+vuSOZclwPm6w72e
TE0MyJZA2HPDY3HIy260pYSHuDTUpe8gTxi0s8JmpFjaMaibBcPzq2gqPSQe1d6pDE8cv0OxNYKL
gFy+uh/H5gpNjfWVBhRmUo/kFf8fs680z0B0IQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
q8meW/DFYsK3R2jTQ13P/a1BVQyF0Eb3aLhqxNSrqINAq7gQ0DvJ6JFuxd6Ce7TIpxqKUYX9026h
UujOPWt7f1brVrSWmt8cW5Um2Yy8tv+YSNv9Ig592u4GssTU6dF978RK/7L4ZuQObLOKvWLJqo3F
6gzw0VbqYS3g5aaGu+Y=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GVM7UoBz9uTOdnKd0CVM0lBuJK2N20FwcoiRGregMBQMsQuevbc7y03ZehM7mfGvEdERp1TciWoI
1b6cDAZYb0YBfSuch0bItCwhdftV3A4/R0nUF0HROsZ/rm/HV7DKDXxItqK0qcdOwqf7ju85NMa4
FJRP/Nuq/ya9IvX9BCpmUlT7tLkICG8cEL8/iJrJY3jRIBtKw85mL5OM+r22LQeYg1/3rb9Rk9BT
RZCTbDcVSUq2Awr+6f0L2NXlRwhFraBy+h9iSZKZ/U7uolyF0nB1+/BSgOl+rttZ2KxfLXe6g81N
FbxtrlpK7FNc9fx2jrKWh5bczyW6p0ATPX0ZbA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rYkJ9a3QzTBGC5CITub5Su2Qs6nnM1m+OFLf4ykZkZGIsp11NQi6h5t8dsi/rX/MeEof1XLVJGEU
N+qLOHuLrttRAipPNBsj7yqH3Amnleqy/rjy8UcckD0gxIYzuIlc+2VKoAoyrEFgofTH5bKzBaaQ
q0JSt8PES8xuld4SvsKwr+0Q23qJIUpeNL3HvzxZDmYf5OhTkwlZPi/aLwSMoPZHKwetLUg5SdBm
7K4UmxvUPD3GNxo6GW6dkG2tFW/N9+ju7i//O1A74VUrDPo1OwQfEJazwHFFpHGjCJkv2CiPU3+I
TIVvzssQcs8IphMJulwZguc7fFiYv6aZyj/GrA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PqIVM68d++A6qxRgSePlX8JOoCfHcFLdhzsYr1BDYvLE5JJ5WKFO0Bie6pyEiAbsH8z6oUFGm/Qy
BLXAyWfv1fmbVAwztezaMaxBF0Lw4epvQlAFVdMGJVKgvxfU7ssvLc1KfpF6R/c1o5+4Vf7zn3X+
R8k67LVYgJoxhrPoY3XYr88CjSITfNW0jLDjh0jtDWf7H7nM6QYSXVbRYczQPcepXW2MOFcCZsbi
tdla+UNJ4NeKTUK5bdE9tNZx/8BYKrJtLhyvNdwHi7EdonKLjQu63ExIHoriUmiZScMNbtr2LUBc
YYGUTIENquQ/OhU+DAVXmKbIZcQhwGaqjYeaag==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YMvD1GHkklhDlN9yur11SqhNZTItCRHxHobZtty993SsbvXTWJBbLeIJ+nQ/sv57gpjV5RswiJYh
Vu7QPlLUy2DbVjjcqxaxXlPvYaWV1eKD7BVBOV6HDzPAaAIaFvNjeRurYX0a9Dz1qkgkmttneZxB
s04mTyRdVOc7jIs5wjgXiF+iA0W50/g9JmIYyP6mMLkgEy0MbGyVfpbRfDMcrB3ACnucHTo8A0nT
V/rBUOGbTCYPmQ01tbuE2nqoEfTlmqHVKO6BZ93tQUEjrYoJdteva6yHUfH3dbV1vwwBtsdolICY
7x8cMlorxb6y2ZD7vQEYz6Q6iVnG/PmdaCkLSg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6480)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
