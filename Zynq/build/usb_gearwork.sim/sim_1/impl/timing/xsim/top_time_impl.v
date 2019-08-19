// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Aug 17 16:47:48 2019
// Host        : apurvan-HP-Pavilion-Laptop-15-cc129tx running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/apurvan/GSoC/data_transfer_gearwork/Zynq/build/usb_gearwork.sim/sim_1/impl/timing/xsim/top_time_impl.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module IOBUF_UNIQ_BASE_
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD2
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module enc_8b10b
   (k4,
    lpdl4,
    k4_reg_0,
    k4_reg_1,
    \enc_data_reg[9]_0 ,
    mode,
    CLK,
    rst,
    pdl6,
    Q,
    s0,
    ao0,
    bo0,
    co0,
    do0,
    eo0,
    io0,
    lpdl6_reg_0,
    compls6__0);
  output k4;
  output lpdl4;
  output k4_reg_0;
  output k4_reg_1;
  output [9:0]\enc_data_reg[9]_0 ;
  input mode;
  input CLK;
  input rst;
  input pdl6;
  input [2:0]Q;
  input s0;
  input ao0;
  input bo0;
  input co0;
  input do0;
  input eo0;
  input io0;
  input lpdl6_reg_0;
  input compls6__0;

  wire CLK;
  wire [2:0]Q;
  wire ao;
  wire ao0;
  wire bo;
  wire bo0;
  wire co;
  wire co0;
  wire compls6__0;
  wire do;
  wire do0;
  wire [9:0]\enc_data_reg[9]_0 ;
  wire eo;
  wire eo0;
  wire f4;
  wire fo;
  wire fo0;
  wire g4;
  wire go;
  wire go0;
  wire h4;
  wire ho;
  wire ho0;
  wire io;
  wire io0;
  wire jo;
  wire jo0;
  wire k4;
  wire k4_reg_0;
  wire k4_reg_1;
  wire lpdl4;
  wire lpdl6;
  wire lpdl6_reg_0;
  wire lreset;
  wire mode;
  wire pdl4;
  wire pdl6;
  wire rst;
  wire s;
  wire s0;
  wire xlreset;

  FDCE #(
    .INIT(1'b0)) 
    ao_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(lreset),
        .D(ao0),
        .Q(ao));
  FDCE #(
    .INIT(1'b0)) 
    bo_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(lreset),
        .D(bo0),
        .Q(bo));
  FDCE #(
    .INIT(1'b0)) 
    co_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(lreset),
        .D(co0),
        .Q(co));
  FDCE #(
    .INIT(1'b0)) 
    do_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(lreset),
        .D(do0),
        .Q(do));
  FDRE #(
    .INIT(1'b0)) 
    \enc_data_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(ao),
        .Q(\enc_data_reg[9]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \enc_data_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(bo),
        .Q(\enc_data_reg[9]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \enc_data_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(co),
        .Q(\enc_data_reg[9]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \enc_data_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(do),
        .Q(\enc_data_reg[9]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \enc_data_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(eo),
        .Q(\enc_data_reg[9]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \enc_data_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(fo),
        .Q(\enc_data_reg[9]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \enc_data_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(go),
        .Q(\enc_data_reg[9]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \enc_data_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(ho),
        .Q(\enc_data_reg[9]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \enc_data_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(io),
        .Q(\enc_data_reg[9]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \enc_data_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(jo),
        .Q(\enc_data_reg[9]_0 [9]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    eo_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(lreset),
        .D(eo0),
        .Q(eo));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    f4_reg
       (.C(CLK),
        .CE(1'b1),
        .D(Q[0]),
        .Q(f4),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA85700F0FF0F00FF)) 
    fo_i_1
       (.I0(h4),
        .I1(s),
        .I2(k4),
        .I3(lpdl6),
        .I4(f4),
        .I5(g4),
        .O(fo0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    fo_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(lreset),
        .D(fo0),
        .Q(fo));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    g4_reg
       (.C(CLK),
        .CE(1'b1),
        .D(Q[1]),
        .Q(g4),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h0FF30C5A)) 
    go_i_1
       (.I0(h4),
        .I1(k4),
        .I2(lpdl6),
        .I3(f4),
        .I4(g4),
        .O(go0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    go_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(lreset),
        .D(go0),
        .Q(go));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    h4_reg
       (.C(CLK),
        .CE(1'b1),
        .D(Q[2]),
        .Q(h4),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h5AA6A6A5)) 
    ho_i_1
       (.I0(h4),
        .I1(k4),
        .I2(lpdl6),
        .I3(f4),
        .I4(g4),
        .O(ho0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    ho_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(lreset),
        .D(ho0),
        .Q(ho));
  FDCE #(
    .INIT(1'b0)) 
    io_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(lreset),
        .D(io0),
        .Q(io));
  LUT6 #(
    .INIT(64'h57A855A555A500FF)) 
    jo_i_1
       (.I0(h4),
        .I1(s),
        .I2(k4),
        .I3(lpdl6),
        .I4(f4),
        .I5(g4),
        .O(jo0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    jo_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(lreset),
        .D(jo0),
        .Q(jo));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    k4_reg
       (.C(CLK),
        .CE(1'b1),
        .D(mode),
        .Q(k4),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6CC3)) 
    lpdl4_i_1
       (.I0(h4),
        .I1(lpdl6),
        .I2(f4),
        .I3(g4),
        .O(pdl4));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    lpdl4_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(lreset),
        .D(pdl4),
        .Q(lpdl4));
  LUT3 #(
    .INIT(8'h40)) 
    lpdl6_i_2
       (.I0(k4),
        .I1(lpdl4),
        .I2(lpdl6_reg_0),
        .O(k4_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    lpdl6_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(lreset),
        .D(pdl6),
        .Q(lpdl6));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    lreset_reg
       (.C(CLK),
        .CE(1'b1),
        .D(xlreset),
        .Q(lreset),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8B)) 
    s_i_2
       (.I0(compls6__0),
        .I1(k4),
        .I2(lpdl4),
        .O(k4_reg_1));
  FDCE #(
    .INIT(1'b0)) 
    s_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(lreset),
        .D(s0),
        .Q(s));
  FDRE #(
    .INIT(1'b0)) 
    xlreset_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rst),
        .Q(xlreset),
        .R(1'b0));
endmodule

module prng_send
   (rst,
    mode,
    s0,
    pdl6,
    compls6__0,
    \sr_reg[28]_0 ,
    io0,
    eo0,
    do0,
    co0,
    bo0,
    ao0,
    Q,
    clk,
    locked1,
    s_reg,
    lpdl6_reg,
    lpdl4,
    k4);
  output rst;
  output mode;
  output s0;
  output pdl6;
  output compls6__0;
  output \sr_reg[28]_0 ;
  output io0;
  output eo0;
  output do0;
  output co0;
  output bo0;
  output ao0;
  output [2:0]Q;
  input clk;
  input locked1;
  input s_reg;
  input lpdl6_reg;
  input lpdl4;
  input k4;

  wire [2:0]Q;
  wire ao0;
  wire bo0;
  wire clk;
  wire co0;
  wire compls6__0;
  wire do0;
  wire \enc_inst/nio__8 ;
  wire eo0;
  wire \hold_prng[0]_i_3_n_0 ;
  wire [29:0]hold_prng_reg;
  wire \hold_prng_reg[0]_i_2_n_0 ;
  wire \hold_prng_reg[0]_i_2_n_4 ;
  wire \hold_prng_reg[0]_i_2_n_5 ;
  wire \hold_prng_reg[0]_i_2_n_6 ;
  wire \hold_prng_reg[0]_i_2_n_7 ;
  wire \hold_prng_reg[12]_i_1_n_0 ;
  wire \hold_prng_reg[12]_i_1_n_4 ;
  wire \hold_prng_reg[12]_i_1_n_5 ;
  wire \hold_prng_reg[12]_i_1_n_6 ;
  wire \hold_prng_reg[12]_i_1_n_7 ;
  wire \hold_prng_reg[16]_i_1_n_0 ;
  wire \hold_prng_reg[16]_i_1_n_4 ;
  wire \hold_prng_reg[16]_i_1_n_5 ;
  wire \hold_prng_reg[16]_i_1_n_6 ;
  wire \hold_prng_reg[16]_i_1_n_7 ;
  wire \hold_prng_reg[20]_i_1_n_0 ;
  wire \hold_prng_reg[20]_i_1_n_4 ;
  wire \hold_prng_reg[20]_i_1_n_5 ;
  wire \hold_prng_reg[20]_i_1_n_6 ;
  wire \hold_prng_reg[20]_i_1_n_7 ;
  wire \hold_prng_reg[24]_i_1_n_0 ;
  wire \hold_prng_reg[24]_i_1_n_4 ;
  wire \hold_prng_reg[24]_i_1_n_5 ;
  wire \hold_prng_reg[24]_i_1_n_6 ;
  wire \hold_prng_reg[24]_i_1_n_7 ;
  wire \hold_prng_reg[28]_i_1_n_6 ;
  wire \hold_prng_reg[28]_i_1_n_7 ;
  wire \hold_prng_reg[4]_i_1_n_0 ;
  wire \hold_prng_reg[4]_i_1_n_4 ;
  wire \hold_prng_reg[4]_i_1_n_5 ;
  wire \hold_prng_reg[4]_i_1_n_6 ;
  wire \hold_prng_reg[4]_i_1_n_7 ;
  wire \hold_prng_reg[8]_i_1_n_0 ;
  wire \hold_prng_reg[8]_i_1_n_4 ;
  wire \hold_prng_reg[8]_i_1_n_5 ;
  wire \hold_prng_reg[8]_i_1_n_6 ;
  wire \hold_prng_reg[8]_i_1_n_7 ;
  wire io0;
  wire k4;
  wire locked1;
  wire lpdl4;
  wire lpdl6_i_3_n_0;
  wire lpdl6_i_4_n_0;
  wire lpdl6_i_6_n_0;
  wire lpdl6_reg;
  wire mode;
  wire mode_i_i_1_n_0;
  wire mode_i_i_2_n_0;
  wire mode_i_i_3_n_0;
  wire mode_i_i_4_n_0;
  wire mode_i_i_5_n_0;
  wire mode_i_i_6_n_0;
  wire mode_i_i_7_n_0;
  wire mode_i_i_8_n_0;
  wire mode_i_i_9_n_0;
  wire [2:0]p_0_in;
  wire p_1_in0;
  wire pdl6;
  wire [28:24]rng;
  wire rst;
  wire s0;
  wire s_reg;
  wire sel;
  wire [31:24]sr;
  wire \sr[25]_i_1_n_0 ;
  wire \sr[31]_i_10_n_0 ;
  wire \sr[31]_i_1_n_0 ;
  wire \sr[31]_i_4_n_0 ;
  wire \sr[31]_i_5_n_0 ;
  wire \sr[31]_i_6_n_0 ;
  wire \sr[31]_i_7_n_0 ;
  wire \sr[31]_i_8_n_0 ;
  wire \sr[31]_i_9_n_0 ;
  wire \sr_reg[28]_0 ;
  wire [2:0]test_counter;
  wire [2:0]\NLW_hold_prng_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_hold_prng_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_hold_prng_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_hold_prng_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_hold_prng_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_hold_prng_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_hold_prng_reg[28]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_hold_prng_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_hold_prng_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    ao_i_1
       (.I0(rng[24]),
        .I1(compls6__0),
        .O(ao0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hD5542AAB)) 
    bo_i_1
       (.I0(rng[25]),
        .I1(rng[26]),
        .I2(rng[24]),
        .I3(rng[27]),
        .I4(compls6__0),
        .O(bo0));
  LUT6 #(
    .INIT(64'h0000EEFEFFFF1101)) 
    co_i_1
       (.I0(rng[24]),
        .I1(rng[25]),
        .I2(rng[27]),
        .I3(rng[28]),
        .I4(rng[26]),
        .I5(compls6__0),
        .O(co0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hD5552AAA)) 
    do_i_1
       (.I0(rng[27]),
        .I1(rng[26]),
        .I2(rng[24]),
        .I3(rng[25]),
        .I4(compls6__0),
        .O(do0));
  LUT6 #(
    .INIT(64'h0002FEE9FFFD0116)) 
    eo_i_1
       (.I0(rng[27]),
        .I1(rng[26]),
        .I2(rng[24]),
        .I3(rng[25]),
        .I4(rng[28]),
        .I5(compls6__0),
        .O(eo0));
  LUT3 #(
    .INIT(8'hF7)) 
    \hold_prng[0]_i_1 
       (.I0(hold_prng_reg[29]),
        .I1(hold_prng_reg[0]),
        .I2(\sr[31]_i_4_n_0 ),
        .O(sel));
  LUT1 #(
    .INIT(2'h1)) 
    \hold_prng[0]_i_3 
       (.I0(hold_prng_reg[0]),
        .O(\hold_prng[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[0]_i_2_n_7 ),
        .Q(hold_prng_reg[0]),
        .R(rst));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \hold_prng_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\hold_prng_reg[0]_i_2_n_0 ,\NLW_hold_prng_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\hold_prng_reg[0]_i_2_n_4 ,\hold_prng_reg[0]_i_2_n_5 ,\hold_prng_reg[0]_i_2_n_6 ,\hold_prng_reg[0]_i_2_n_7 }),
        .S({hold_prng_reg[3:1],\hold_prng[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[10] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[8]_i_1_n_5 ),
        .Q(hold_prng_reg[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[11] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[8]_i_1_n_4 ),
        .Q(hold_prng_reg[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[12] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[12]_i_1_n_7 ),
        .Q(hold_prng_reg[12]),
        .R(rst));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \hold_prng_reg[12]_i_1 
       (.CI(\hold_prng_reg[8]_i_1_n_0 ),
        .CO({\hold_prng_reg[12]_i_1_n_0 ,\NLW_hold_prng_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hold_prng_reg[12]_i_1_n_4 ,\hold_prng_reg[12]_i_1_n_5 ,\hold_prng_reg[12]_i_1_n_6 ,\hold_prng_reg[12]_i_1_n_7 }),
        .S(hold_prng_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[13] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[12]_i_1_n_6 ),
        .Q(hold_prng_reg[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[14] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[12]_i_1_n_5 ),
        .Q(hold_prng_reg[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[15] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[12]_i_1_n_4 ),
        .Q(hold_prng_reg[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[16] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[16]_i_1_n_7 ),
        .Q(hold_prng_reg[16]),
        .R(rst));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \hold_prng_reg[16]_i_1 
       (.CI(\hold_prng_reg[12]_i_1_n_0 ),
        .CO({\hold_prng_reg[16]_i_1_n_0 ,\NLW_hold_prng_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hold_prng_reg[16]_i_1_n_4 ,\hold_prng_reg[16]_i_1_n_5 ,\hold_prng_reg[16]_i_1_n_6 ,\hold_prng_reg[16]_i_1_n_7 }),
        .S(hold_prng_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[17] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[16]_i_1_n_6 ),
        .Q(hold_prng_reg[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[18] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[16]_i_1_n_5 ),
        .Q(hold_prng_reg[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[19] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[16]_i_1_n_4 ),
        .Q(hold_prng_reg[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[0]_i_2_n_6 ),
        .Q(hold_prng_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[20] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[20]_i_1_n_7 ),
        .Q(hold_prng_reg[20]),
        .R(rst));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \hold_prng_reg[20]_i_1 
       (.CI(\hold_prng_reg[16]_i_1_n_0 ),
        .CO({\hold_prng_reg[20]_i_1_n_0 ,\NLW_hold_prng_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hold_prng_reg[20]_i_1_n_4 ,\hold_prng_reg[20]_i_1_n_5 ,\hold_prng_reg[20]_i_1_n_6 ,\hold_prng_reg[20]_i_1_n_7 }),
        .S(hold_prng_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[21] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[20]_i_1_n_6 ),
        .Q(hold_prng_reg[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[22] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[20]_i_1_n_5 ),
        .Q(hold_prng_reg[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[23] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[20]_i_1_n_4 ),
        .Q(hold_prng_reg[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[24] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[24]_i_1_n_7 ),
        .Q(hold_prng_reg[24]),
        .R(rst));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \hold_prng_reg[24]_i_1 
       (.CI(\hold_prng_reg[20]_i_1_n_0 ),
        .CO({\hold_prng_reg[24]_i_1_n_0 ,\NLW_hold_prng_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hold_prng_reg[24]_i_1_n_4 ,\hold_prng_reg[24]_i_1_n_5 ,\hold_prng_reg[24]_i_1_n_6 ,\hold_prng_reg[24]_i_1_n_7 }),
        .S(hold_prng_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[25] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[24]_i_1_n_6 ),
        .Q(hold_prng_reg[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[26] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[24]_i_1_n_5 ),
        .Q(hold_prng_reg[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[27] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[24]_i_1_n_4 ),
        .Q(hold_prng_reg[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[28] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[28]_i_1_n_7 ),
        .Q(hold_prng_reg[28]),
        .R(rst));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \hold_prng_reg[28]_i_1 
       (.CI(\hold_prng_reg[24]_i_1_n_0 ),
        .CO(\NLW_hold_prng_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_hold_prng_reg[28]_i_1_O_UNCONNECTED [3:2],\hold_prng_reg[28]_i_1_n_6 ,\hold_prng_reg[28]_i_1_n_7 }),
        .S({1'b0,1'b0,hold_prng_reg[29:28]}));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[29] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[28]_i_1_n_6 ),
        .Q(hold_prng_reg[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[2] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[0]_i_2_n_5 ),
        .Q(hold_prng_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[3] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[0]_i_2_n_4 ),
        .Q(hold_prng_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[4] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[4]_i_1_n_7 ),
        .Q(hold_prng_reg[4]),
        .R(rst));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \hold_prng_reg[4]_i_1 
       (.CI(\hold_prng_reg[0]_i_2_n_0 ),
        .CO({\hold_prng_reg[4]_i_1_n_0 ,\NLW_hold_prng_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hold_prng_reg[4]_i_1_n_4 ,\hold_prng_reg[4]_i_1_n_5 ,\hold_prng_reg[4]_i_1_n_6 ,\hold_prng_reg[4]_i_1_n_7 }),
        .S(hold_prng_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[5] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[4]_i_1_n_6 ),
        .Q(hold_prng_reg[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[6] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[4]_i_1_n_5 ),
        .Q(hold_prng_reg[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[7] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[4]_i_1_n_4 ),
        .Q(hold_prng_reg[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[8] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[8]_i_1_n_7 ),
        .Q(hold_prng_reg[8]),
        .R(rst));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \hold_prng_reg[8]_i_1 
       (.CI(\hold_prng_reg[4]_i_1_n_0 ),
        .CO({\hold_prng_reg[8]_i_1_n_0 ,\NLW_hold_prng_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hold_prng_reg[8]_i_1_n_4 ,\hold_prng_reg[8]_i_1_n_5 ,\hold_prng_reg[8]_i_1_n_6 ,\hold_prng_reg[8]_i_1_n_7 }),
        .S(hold_prng_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \hold_prng_reg[9] 
       (.C(clk),
        .CE(sel),
        .D(\hold_prng_reg[8]_i_1_n_6 ),
        .Q(hold_prng_reg[9]),
        .R(rst));
  LUT2 #(
    .INIT(4'h6)) 
    io_i_1
       (.I0(\enc_inst/nio__8 ),
        .I1(compls6__0),
        .O(io0));
  LUT6 #(
    .INIT(64'hC2282BBF033C3CC0)) 
    io_i_2
       (.I0(mode),
        .I1(rng[26]),
        .I2(rng[24]),
        .I3(rng[25]),
        .I4(rng[27]),
        .I5(rng[28]),
        .O(\enc_inst/nio__8 ));
  LUT6 #(
    .INIT(64'hFFFFFFBAAAAAFFBA)) 
    lpdl6_i_1
       (.I0(lpdl6_reg),
        .I1(lpdl6_i_3_n_0),
        .I2(rng[28]),
        .I3(lpdl6_i_4_n_0),
        .I4(compls6__0),
        .I5(lpdl6_i_6_n_0),
        .O(pdl6));
  LUT3 #(
    .INIT(8'h7F)) 
    lpdl6_i_3
       (.I0(rng[26]),
        .I1(rng[24]),
        .I2(rng[25]),
        .O(lpdl6_i_3_n_0));
  LUT6 #(
    .INIT(64'hFAAAEAAAEAAAAABA)) 
    lpdl6_i_4
       (.I0(k4),
        .I1(rng[25]),
        .I2(rng[28]),
        .I3(rng[27]),
        .I4(rng[24]),
        .I5(rng[26]),
        .O(lpdl6_i_4_n_0));
  LUT5 #(
    .INIT(32'hCACACAFA)) 
    lpdl6_i_5
       (.I0(lpdl6_i_6_n_0),
        .I1(lpdl6_i_4_n_0),
        .I2(lpdl4),
        .I3(rng[27]),
        .I4(lpdl6_i_3_n_0),
        .O(compls6__0));
  LUT5 #(
    .INIT(32'h40010135)) 
    lpdl6_i_6
       (.I0(rng[28]),
        .I1(rng[25]),
        .I2(rng[27]),
        .I3(rng[24]),
        .I4(rng[26]),
        .O(lpdl6_i_6_n_0));
  LUT5 #(
    .INIT(32'h177C7EE8)) 
    lpdl6_i_7
       (.I0(rng[28]),
        .I1(rng[26]),
        .I2(rng[24]),
        .I3(rng[25]),
        .I4(rng[27]),
        .O(\sr_reg[28]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    master_serdes_inst_data0_i_1
       (.I0(locked1),
        .O(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFDDDDD5DD)) 
    mode_i_i_1
       (.I0(locked1),
        .I1(mode),
        .I2(\sr[31]_i_4_n_0 ),
        .I3(hold_prng_reg[0]),
        .I4(hold_prng_reg[29]),
        .I5(mode_i_i_2_n_0),
        .O(mode_i_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    mode_i_i_2
       (.I0(mode_i_i_3_n_0),
        .I1(mode_i_i_4_n_0),
        .I2(mode_i_i_5_n_0),
        .O(mode_i_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    mode_i_i_3
       (.I0(mode_i_i_6_n_0),
        .I1(hold_prng_reg[17]),
        .I2(hold_prng_reg[16]),
        .I3(hold_prng_reg[15]),
        .I4(hold_prng_reg[14]),
        .I5(mode_i_i_7_n_0),
        .O(mode_i_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    mode_i_i_4
       (.I0(hold_prng_reg[24]),
        .I1(hold_prng_reg[25]),
        .I2(hold_prng_reg[26]),
        .I3(hold_prng_reg[27]),
        .I4(hold_prng_reg[29]),
        .I5(hold_prng_reg[28]),
        .O(mode_i_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    mode_i_i_5
       (.I0(mode_i_i_8_n_0),
        .I1(hold_prng_reg[19]),
        .I2(hold_prng_reg[18]),
        .I3(hold_prng_reg[5]),
        .I4(hold_prng_reg[4]),
        .I5(mode_i_i_9_n_0),
        .O(mode_i_i_5_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    mode_i_i_6
       (.I0(hold_prng_reg[13]),
        .I1(hold_prng_reg[12]),
        .I2(hold_prng_reg[11]),
        .I3(hold_prng_reg[10]),
        .O(mode_i_i_6_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    mode_i_i_7
       (.I0(hold_prng_reg[7]),
        .I1(hold_prng_reg[6]),
        .I2(hold_prng_reg[9]),
        .I3(hold_prng_reg[8]),
        .O(mode_i_i_7_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    mode_i_i_8
       (.I0(hold_prng_reg[23]),
        .I1(hold_prng_reg[22]),
        .I2(hold_prng_reg[21]),
        .I3(hold_prng_reg[20]),
        .O(mode_i_i_8_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    mode_i_i_9
       (.I0(hold_prng_reg[1]),
        .I1(hold_prng_reg[0]),
        .I2(hold_prng_reg[3]),
        .I3(hold_prng_reg[2]),
        .O(mode_i_i_9_n_0));
  FDRE #(
    .INIT(1'b1)) 
    mode_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(mode_i_i_1_n_0),
        .Q(mode),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0004042004202000)) 
    s_i_1
       (.I0(s_reg),
        .I1(rng[27]),
        .I2(rng[28]),
        .I3(rng[26]),
        .I4(rng[24]),
        .I5(rng[25]),
        .O(s0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \sr[24]_i_1 
       (.I0(test_counter[2]),
        .I1(test_counter[0]),
        .I2(test_counter[1]),
        .O(sr[24]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE3)) 
    \sr[25]_i_1 
       (.I0(test_counter[2]),
        .I1(test_counter[1]),
        .I2(test_counter[0]),
        .O(\sr[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \sr[26]_i_1 
       (.I0(test_counter[0]),
        .I1(test_counter[2]),
        .I2(test_counter[1]),
        .O(sr[26]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h94)) 
    \sr[27]_i_1 
       (.I0(test_counter[0]),
        .I1(test_counter[1]),
        .I2(test_counter[2]),
        .O(sr[27]));
  LUT3 #(
    .INIT(8'h49)) 
    \sr[28]_i_1 
       (.I0(test_counter[0]),
        .I1(test_counter[2]),
        .I2(test_counter[1]),
        .O(sr[28]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \sr[29]_i_1 
       (.I0(test_counter[2]),
        .I1(test_counter[0]),
        .I2(test_counter[1]),
        .O(sr[29]));
  LUT3 #(
    .INIT(8'h4B)) 
    \sr[30]_i_1 
       (.I0(test_counter[2]),
        .I1(test_counter[0]),
        .I2(test_counter[1]),
        .O(sr[30]));
  LUT5 #(
    .INIT(32'h0010FFFF)) 
    \sr[31]_i_1 
       (.I0(\sr[31]_i_4_n_0 ),
        .I1(hold_prng_reg[0]),
        .I2(hold_prng_reg[29]),
        .I3(mode),
        .I4(locked1),
        .O(\sr[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \sr[31]_i_10 
       (.I0(hold_prng_reg[16]),
        .I1(hold_prng_reg[15]),
        .I2(hold_prng_reg[14]),
        .I3(hold_prng_reg[13]),
        .O(\sr[31]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sr[31]_i_2 
       (.I0(mode),
        .O(p_1_in0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \sr[31]_i_3 
       (.I0(test_counter[0]),
        .I1(test_counter[2]),
        .I2(test_counter[1]),
        .O(sr[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \sr[31]_i_4 
       (.I0(\sr[31]_i_5_n_0 ),
        .I1(hold_prng_reg[2]),
        .I2(hold_prng_reg[1]),
        .I3(hold_prng_reg[28]),
        .I4(hold_prng_reg[27]),
        .I5(\sr[31]_i_6_n_0 ),
        .O(\sr[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \sr[31]_i_5 
       (.I0(hold_prng_reg[22]),
        .I1(hold_prng_reg[21]),
        .I2(\sr[31]_i_7_n_0 ),
        .I3(\sr[31]_i_8_n_0 ),
        .I4(\sr[31]_i_9_n_0 ),
        .I5(\sr[31]_i_10_n_0 ),
        .O(\sr[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \sr[31]_i_6 
       (.I0(hold_prng_reg[23]),
        .I1(hold_prng_reg[24]),
        .I2(hold_prng_reg[25]),
        .I3(hold_prng_reg[26]),
        .I4(hold_prng_reg[4]),
        .I5(hold_prng_reg[3]),
        .O(\sr[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \sr[31]_i_7 
       (.I0(hold_prng_reg[12]),
        .I1(hold_prng_reg[11]),
        .I2(hold_prng_reg[10]),
        .I3(hold_prng_reg[9]),
        .O(\sr[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \sr[31]_i_8 
       (.I0(hold_prng_reg[8]),
        .I1(hold_prng_reg[7]),
        .I2(hold_prng_reg[6]),
        .I3(hold_prng_reg[5]),
        .O(\sr[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \sr[31]_i_9 
       (.I0(hold_prng_reg[20]),
        .I1(hold_prng_reg[19]),
        .I2(hold_prng_reg[18]),
        .I3(hold_prng_reg[17]),
        .O(\sr[31]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[24] 
       (.C(clk),
        .CE(p_1_in0),
        .D(sr[24]),
        .Q(rng[24]),
        .R(\sr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[25] 
       (.C(clk),
        .CE(p_1_in0),
        .D(\sr[25]_i_1_n_0 ),
        .Q(rng[25]),
        .R(\sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \sr_reg[26] 
       (.C(clk),
        .CE(p_1_in0),
        .D(sr[26]),
        .Q(rng[26]),
        .S(\sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \sr_reg[27] 
       (.C(clk),
        .CE(p_1_in0),
        .D(sr[27]),
        .Q(rng[27]),
        .S(\sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \sr_reg[28] 
       (.C(clk),
        .CE(p_1_in0),
        .D(sr[28]),
        .Q(rng[28]),
        .S(\sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \sr_reg[29] 
       (.C(clk),
        .CE(p_1_in0),
        .D(sr[29]),
        .Q(Q[0]),
        .S(\sr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[30] 
       (.C(clk),
        .CE(p_1_in0),
        .D(sr[30]),
        .Q(Q[1]),
        .R(\sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \sr_reg[31] 
       (.C(clk),
        .CE(p_1_in0),
        .D(sr[31]),
        .Q(Q[2]),
        .S(\sr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    test_counter0
       (.I0(test_counter[0]),
        .I1(test_counter[1]),
        .I2(test_counter[2]),
        .O(p_0_in[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \test_counter[0]_i_1 
       (.I0(test_counter[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \test_counter[1]_i_1 
       (.I0(test_counter[0]),
        .I1(test_counter[1]),
        .O(p_0_in[1]));
  FDRE #(
    .INIT(1'b0)) 
    \test_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(test_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \test_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(test_counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \test_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(test_counter[2]),
        .R(1'b0));
endmodule

module ps7_stub
   (i2c_scl_o,
    i2c_sda_o,
    FCLKCLK,
    PS7_inst_0,
    T,
    i2c_scl_i,
    i2c_sda_i);
  output i2c_scl_o;
  output i2c_sda_o;
  output [0:0]FCLKCLK;
  output PS7_inst_0;
  output T;
  input i2c_scl_i;
  input i2c_sda_i;

  wire [0:0]FCLKCLK;
  wire PS7_inst_0;
  wire T;
  wire i2c1_scl_t_n;
  wire i2c1_sda_t_n;
  wire i2c_scl_i;
  wire i2c_scl_o;
  wire i2c_sda_i;
  wire i2c_sda_o;
  wire NLW_PS7_inst_DDRCASB_UNCONNECTED;
  wire NLW_PS7_inst_DDRCKE_UNCONNECTED;
  wire NLW_PS7_inst_DDRCKN_UNCONNECTED;
  wire NLW_PS7_inst_DDRCKP_UNCONNECTED;
  wire NLW_PS7_inst_DDRCSB_UNCONNECTED;
  wire NLW_PS7_inst_DDRDRSTB_UNCONNECTED;
  wire NLW_PS7_inst_DDRODT_UNCONNECTED;
  wire NLW_PS7_inst_DDRRASB_UNCONNECTED;
  wire NLW_PS7_inst_DDRVRN_UNCONNECTED;
  wire NLW_PS7_inst_DDRVRP_UNCONNECTED;
  wire NLW_PS7_inst_DDRWEB_UNCONNECTED;
  wire NLW_PS7_inst_DMA0DAVALID_UNCONNECTED;
  wire NLW_PS7_inst_DMA0DRREADY_UNCONNECTED;
  wire NLW_PS7_inst_DMA0RSTN_UNCONNECTED;
  wire NLW_PS7_inst_DMA1DAVALID_UNCONNECTED;
  wire NLW_PS7_inst_DMA1DRREADY_UNCONNECTED;
  wire NLW_PS7_inst_DMA1RSTN_UNCONNECTED;
  wire NLW_PS7_inst_DMA2DAVALID_UNCONNECTED;
  wire NLW_PS7_inst_DMA2DRREADY_UNCONNECTED;
  wire NLW_PS7_inst_DMA2RSTN_UNCONNECTED;
  wire NLW_PS7_inst_DMA3DAVALID_UNCONNECTED;
  wire NLW_PS7_inst_DMA3DRREADY_UNCONNECTED;
  wire NLW_PS7_inst_DMA3RSTN_UNCONNECTED;
  wire NLW_PS7_inst_EMIOCAN0PHYTX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOCAN1PHYTX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET0GMIITXEN_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET0GMIITXER_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET0MDIOMDC_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET0MDIOO_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET0MDIOTN_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET0PTPDELAYREQRX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET0PTPDELAYREQTX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET0PTPPDELAYREQRX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET0PTPPDELAYREQTX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET0PTPPDELAYRESPRX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET0PTPPDELAYRESPTX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET0PTPSYNCFRAMERX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET0PTPSYNCFRAMETX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET0SOFRX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET0SOFTX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET1GMIITXEN_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET1GMIITXER_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET1MDIOMDC_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET1MDIOO_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET1MDIOTN_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET1PTPDELAYREQRX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET1PTPDELAYREQTX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET1PTPPDELAYREQRX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET1PTPPDELAYREQTX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET1PTPPDELAYRESPRX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET1PTPPDELAYRESPTX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET1PTPSYNCFRAMERX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET1PTPSYNCFRAMETX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET1SOFRX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOENET1SOFTX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOI2C0SCLO_UNCONNECTED;
  wire NLW_PS7_inst_EMIOI2C0SCLTN_UNCONNECTED;
  wire NLW_PS7_inst_EMIOI2C0SDAO_UNCONNECTED;
  wire NLW_PS7_inst_EMIOI2C0SDATN_UNCONNECTED;
  wire NLW_PS7_inst_EMIOPJTAGTDO_UNCONNECTED;
  wire NLW_PS7_inst_EMIOPJTAGTDTN_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSDIO0BUSPOW_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSDIO0CLK_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSDIO0CMDO_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSDIO0CMDTN_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSDIO0LED_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSDIO1BUSPOW_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSDIO1CLK_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSDIO1CMDO_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSDIO1CMDTN_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSDIO1LED_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSPI0MO_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSPI0MOTN_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSPI0SCLKO_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSPI0SCLKTN_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSPI0SO_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSPI0SSNTN_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSPI0STN_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSPI1MO_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSPI1MOTN_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSPI1SCLKO_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSPI1SCLKTN_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSPI1SO_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSPI1SSNTN_UNCONNECTED;
  wire NLW_PS7_inst_EMIOSPI1STN_UNCONNECTED;
  wire NLW_PS7_inst_EMIOTRACECTL_UNCONNECTED;
  wire NLW_PS7_inst_EMIOUART0DTRN_UNCONNECTED;
  wire NLW_PS7_inst_EMIOUART0RTSN_UNCONNECTED;
  wire NLW_PS7_inst_EMIOUART0TX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOUART1DTRN_UNCONNECTED;
  wire NLW_PS7_inst_EMIOUART1RTSN_UNCONNECTED;
  wire NLW_PS7_inst_EMIOUART1TX_UNCONNECTED;
  wire NLW_PS7_inst_EMIOUSB0VBUSPWRSELECT_UNCONNECTED;
  wire NLW_PS7_inst_EMIOUSB1VBUSPWRSELECT_UNCONNECTED;
  wire NLW_PS7_inst_EMIOWDTRSTO_UNCONNECTED;
  wire NLW_PS7_inst_EVENTEVENTO_UNCONNECTED;
  wire NLW_PS7_inst_MAXIGP0ARESETN_UNCONNECTED;
  wire NLW_PS7_inst_MAXIGP0ARVALID_UNCONNECTED;
  wire NLW_PS7_inst_MAXIGP0AWVALID_UNCONNECTED;
  wire NLW_PS7_inst_MAXIGP0BREADY_UNCONNECTED;
  wire NLW_PS7_inst_MAXIGP0RREADY_UNCONNECTED;
  wire NLW_PS7_inst_MAXIGP0WLAST_UNCONNECTED;
  wire NLW_PS7_inst_MAXIGP0WVALID_UNCONNECTED;
  wire NLW_PS7_inst_MAXIGP1ARESETN_UNCONNECTED;
  wire NLW_PS7_inst_MAXIGP1ARVALID_UNCONNECTED;
  wire NLW_PS7_inst_MAXIGP1AWVALID_UNCONNECTED;
  wire NLW_PS7_inst_MAXIGP1BREADY_UNCONNECTED;
  wire NLW_PS7_inst_MAXIGP1RREADY_UNCONNECTED;
  wire NLW_PS7_inst_MAXIGP1WLAST_UNCONNECTED;
  wire NLW_PS7_inst_MAXIGP1WVALID_UNCONNECTED;
  wire NLW_PS7_inst_PSCLK_UNCONNECTED;
  wire NLW_PS7_inst_PSPORB_UNCONNECTED;
  wire NLW_PS7_inst_PSSRSTB_UNCONNECTED;
  wire NLW_PS7_inst_SAXIACPARESETN_UNCONNECTED;
  wire NLW_PS7_inst_SAXIACPARREADY_UNCONNECTED;
  wire NLW_PS7_inst_SAXIACPAWREADY_UNCONNECTED;
  wire NLW_PS7_inst_SAXIACPBVALID_UNCONNECTED;
  wire NLW_PS7_inst_SAXIACPRLAST_UNCONNECTED;
  wire NLW_PS7_inst_SAXIACPRVALID_UNCONNECTED;
  wire NLW_PS7_inst_SAXIACPWREADY_UNCONNECTED;
  wire NLW_PS7_inst_SAXIGP0ARESETN_UNCONNECTED;
  wire NLW_PS7_inst_SAXIGP0ARREADY_UNCONNECTED;
  wire NLW_PS7_inst_SAXIGP0AWREADY_UNCONNECTED;
  wire NLW_PS7_inst_SAXIGP0BVALID_UNCONNECTED;
  wire NLW_PS7_inst_SAXIGP0RLAST_UNCONNECTED;
  wire NLW_PS7_inst_SAXIGP0RVALID_UNCONNECTED;
  wire NLW_PS7_inst_SAXIGP0WREADY_UNCONNECTED;
  wire NLW_PS7_inst_SAXIGP1ARESETN_UNCONNECTED;
  wire NLW_PS7_inst_SAXIGP1ARREADY_UNCONNECTED;
  wire NLW_PS7_inst_SAXIGP1AWREADY_UNCONNECTED;
  wire NLW_PS7_inst_SAXIGP1BVALID_UNCONNECTED;
  wire NLW_PS7_inst_SAXIGP1RLAST_UNCONNECTED;
  wire NLW_PS7_inst_SAXIGP1RVALID_UNCONNECTED;
  wire NLW_PS7_inst_SAXIGP1WREADY_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP0ARESETN_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP0ARREADY_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP0AWREADY_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP0BVALID_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP0RLAST_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP0RVALID_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP0WREADY_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP1ARESETN_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP1ARREADY_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP1AWREADY_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP1BVALID_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP1RLAST_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP1RVALID_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP1WREADY_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP2ARESETN_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP2ARREADY_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP2AWREADY_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP2BVALID_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP2RLAST_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP2RVALID_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP2WREADY_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP3ARESETN_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP3ARREADY_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP3AWREADY_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP3BVALID_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP3RLAST_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP3RVALID_UNCONNECTED;
  wire NLW_PS7_inst_SAXIHP3WREADY_UNCONNECTED;
  wire [14:0]NLW_PS7_inst_DDRA_UNCONNECTED;
  wire [2:0]NLW_PS7_inst_DDRBA_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_DDRDM_UNCONNECTED;
  wire [31:0]NLW_PS7_inst_DDRDQ_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_DDRDQSN_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_DDRDQSP_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_DMA0DATYPE_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_DMA1DATYPE_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_DMA2DATYPE_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_DMA3DATYPE_UNCONNECTED;
  wire [7:0]NLW_PS7_inst_EMIOENET0GMIITXD_UNCONNECTED;
  wire [7:0]NLW_PS7_inst_EMIOENET1GMIITXD_UNCONNECTED;
  wire [63:0]NLW_PS7_inst_EMIOGPIOO_UNCONNECTED;
  wire [63:0]NLW_PS7_inst_EMIOGPIOTN_UNCONNECTED;
  wire [2:0]NLW_PS7_inst_EMIOSDIO0BUSVOLT_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_EMIOSDIO0DATAO_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_EMIOSDIO0DATATN_UNCONNECTED;
  wire [2:0]NLW_PS7_inst_EMIOSDIO1BUSVOLT_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_EMIOSDIO1DATAO_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_EMIOSDIO1DATATN_UNCONNECTED;
  wire [2:0]NLW_PS7_inst_EMIOSPI0SSON_UNCONNECTED;
  wire [2:0]NLW_PS7_inst_EMIOSPI1SSON_UNCONNECTED;
  wire [31:0]NLW_PS7_inst_EMIOTRACEDATA_UNCONNECTED;
  wire [2:0]NLW_PS7_inst_EMIOTTC0WAVEO_UNCONNECTED;
  wire [2:0]NLW_PS7_inst_EMIOTTC1WAVEO_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_EMIOUSB0PORTINDCTL_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_EMIOUSB1PORTINDCTL_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_EVENTSTANDBYWFE_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_EVENTSTANDBYWFI_UNCONNECTED;
  wire [3:1]NLW_PS7_inst_FCLKCLK_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_FCLKRESETN_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_FTMTF2PTRIGACK_UNCONNECTED;
  wire [31:0]NLW_PS7_inst_FTMTP2FDEBUG_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_FTMTP2FTRIG_UNCONNECTED;
  wire [28:0]NLW_PS7_inst_IRQP2F_UNCONNECTED;
  wire [31:0]NLW_PS7_inst_MAXIGP0ARADDR_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_MAXIGP0ARBURST_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_MAXIGP0ARCACHE_UNCONNECTED;
  wire [11:0]NLW_PS7_inst_MAXIGP0ARID_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_MAXIGP0ARLEN_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_MAXIGP0ARLOCK_UNCONNECTED;
  wire [2:0]NLW_PS7_inst_MAXIGP0ARPROT_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_MAXIGP0ARQOS_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_MAXIGP0ARSIZE_UNCONNECTED;
  wire [31:0]NLW_PS7_inst_MAXIGP0AWADDR_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_MAXIGP0AWBURST_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_MAXIGP0AWCACHE_UNCONNECTED;
  wire [11:0]NLW_PS7_inst_MAXIGP0AWID_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_MAXIGP0AWLEN_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_MAXIGP0AWLOCK_UNCONNECTED;
  wire [2:0]NLW_PS7_inst_MAXIGP0AWPROT_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_MAXIGP0AWQOS_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_MAXIGP0AWSIZE_UNCONNECTED;
  wire [31:0]NLW_PS7_inst_MAXIGP0WDATA_UNCONNECTED;
  wire [11:0]NLW_PS7_inst_MAXIGP0WID_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_MAXIGP0WSTRB_UNCONNECTED;
  wire [31:0]NLW_PS7_inst_MAXIGP1ARADDR_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_MAXIGP1ARBURST_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_MAXIGP1ARCACHE_UNCONNECTED;
  wire [11:0]NLW_PS7_inst_MAXIGP1ARID_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_MAXIGP1ARLEN_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_MAXIGP1ARLOCK_UNCONNECTED;
  wire [2:0]NLW_PS7_inst_MAXIGP1ARPROT_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_MAXIGP1ARQOS_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_MAXIGP1ARSIZE_UNCONNECTED;
  wire [31:0]NLW_PS7_inst_MAXIGP1AWADDR_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_MAXIGP1AWBURST_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_MAXIGP1AWCACHE_UNCONNECTED;
  wire [11:0]NLW_PS7_inst_MAXIGP1AWID_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_MAXIGP1AWLEN_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_MAXIGP1AWLOCK_UNCONNECTED;
  wire [2:0]NLW_PS7_inst_MAXIGP1AWPROT_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_MAXIGP1AWQOS_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_MAXIGP1AWSIZE_UNCONNECTED;
  wire [31:0]NLW_PS7_inst_MAXIGP1WDATA_UNCONNECTED;
  wire [11:0]NLW_PS7_inst_MAXIGP1WID_UNCONNECTED;
  wire [3:0]NLW_PS7_inst_MAXIGP1WSTRB_UNCONNECTED;
  wire [53:0]NLW_PS7_inst_MIO_UNCONNECTED;
  wire [2:0]NLW_PS7_inst_SAXIACPBID_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_SAXIACPBRESP_UNCONNECTED;
  wire [63:0]NLW_PS7_inst_SAXIACPRDATA_UNCONNECTED;
  wire [2:0]NLW_PS7_inst_SAXIACPRID_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_SAXIACPRRESP_UNCONNECTED;
  wire [5:0]NLW_PS7_inst_SAXIGP0BID_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_SAXIGP0BRESP_UNCONNECTED;
  wire [31:0]NLW_PS7_inst_SAXIGP0RDATA_UNCONNECTED;
  wire [5:0]NLW_PS7_inst_SAXIGP0RID_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_SAXIGP0RRESP_UNCONNECTED;
  wire [5:0]NLW_PS7_inst_SAXIGP1BID_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_SAXIGP1BRESP_UNCONNECTED;
  wire [31:0]NLW_PS7_inst_SAXIGP1RDATA_UNCONNECTED;
  wire [5:0]NLW_PS7_inst_SAXIGP1RID_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_SAXIGP1RRESP_UNCONNECTED;
  wire [5:0]NLW_PS7_inst_SAXIHP0BID_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_SAXIHP0BRESP_UNCONNECTED;
  wire [2:0]NLW_PS7_inst_SAXIHP0RACOUNT_UNCONNECTED;
  wire [7:0]NLW_PS7_inst_SAXIHP0RCOUNT_UNCONNECTED;
  wire [63:0]NLW_PS7_inst_SAXIHP0RDATA_UNCONNECTED;
  wire [5:0]NLW_PS7_inst_SAXIHP0RID_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_SAXIHP0RRESP_UNCONNECTED;
  wire [5:0]NLW_PS7_inst_SAXIHP0WACOUNT_UNCONNECTED;
  wire [7:0]NLW_PS7_inst_SAXIHP0WCOUNT_UNCONNECTED;
  wire [5:0]NLW_PS7_inst_SAXIHP1BID_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_SAXIHP1BRESP_UNCONNECTED;
  wire [2:0]NLW_PS7_inst_SAXIHP1RACOUNT_UNCONNECTED;
  wire [7:0]NLW_PS7_inst_SAXIHP1RCOUNT_UNCONNECTED;
  wire [63:0]NLW_PS7_inst_SAXIHP1RDATA_UNCONNECTED;
  wire [5:0]NLW_PS7_inst_SAXIHP1RID_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_SAXIHP1RRESP_UNCONNECTED;
  wire [5:0]NLW_PS7_inst_SAXIHP1WACOUNT_UNCONNECTED;
  wire [7:0]NLW_PS7_inst_SAXIHP1WCOUNT_UNCONNECTED;
  wire [5:0]NLW_PS7_inst_SAXIHP2BID_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_SAXIHP2BRESP_UNCONNECTED;
  wire [2:0]NLW_PS7_inst_SAXIHP2RACOUNT_UNCONNECTED;
  wire [7:0]NLW_PS7_inst_SAXIHP2RCOUNT_UNCONNECTED;
  wire [63:0]NLW_PS7_inst_SAXIHP2RDATA_UNCONNECTED;
  wire [5:0]NLW_PS7_inst_SAXIHP2RID_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_SAXIHP2RRESP_UNCONNECTED;
  wire [5:0]NLW_PS7_inst_SAXIHP2WACOUNT_UNCONNECTED;
  wire [7:0]NLW_PS7_inst_SAXIHP2WCOUNT_UNCONNECTED;
  wire [5:0]NLW_PS7_inst_SAXIHP3BID_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_SAXIHP3BRESP_UNCONNECTED;
  wire [2:0]NLW_PS7_inst_SAXIHP3RACOUNT_UNCONNECTED;
  wire [7:0]NLW_PS7_inst_SAXIHP3RCOUNT_UNCONNECTED;
  wire [63:0]NLW_PS7_inst_SAXIHP3RDATA_UNCONNECTED;
  wire [5:0]NLW_PS7_inst_SAXIHP3RID_UNCONNECTED;
  wire [1:0]NLW_PS7_inst_SAXIHP3RRESP_UNCONNECTED;
  wire [5:0]NLW_PS7_inst_SAXIHP3WACOUNT_UNCONNECTED;
  wire [7:0]NLW_PS7_inst_SAXIHP3WCOUNT_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    IOBUF_scl_inst_i_1
       (.I0(i2c1_scl_t_n),
        .O(PS7_inst_0));
  LUT1 #(
    .INIT(2'h1)) 
    IOBUF_sda_inst_i_1
       (.I0(i2c1_sda_t_n),
        .O(T));
  (* DONT_TOUCH *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  (* box_type = "PRIMITIVE" *) 
  PS7 PS7_inst
       (.DDRA(NLW_PS7_inst_DDRA_UNCONNECTED[14:0]),
        .DDRARB({1'b0,1'b0,1'b0,1'b0}),
        .DDRBA(NLW_PS7_inst_DDRBA_UNCONNECTED[2:0]),
        .DDRCASB(NLW_PS7_inst_DDRCASB_UNCONNECTED),
        .DDRCKE(NLW_PS7_inst_DDRCKE_UNCONNECTED),
        .DDRCKN(NLW_PS7_inst_DDRCKN_UNCONNECTED),
        .DDRCKP(NLW_PS7_inst_DDRCKP_UNCONNECTED),
        .DDRCSB(NLW_PS7_inst_DDRCSB_UNCONNECTED),
        .DDRDM(NLW_PS7_inst_DDRDM_UNCONNECTED[3:0]),
        .DDRDQ(NLW_PS7_inst_DDRDQ_UNCONNECTED[31:0]),
        .DDRDQSN(NLW_PS7_inst_DDRDQSN_UNCONNECTED[3:0]),
        .DDRDQSP(NLW_PS7_inst_DDRDQSP_UNCONNECTED[3:0]),
        .DDRDRSTB(NLW_PS7_inst_DDRDRSTB_UNCONNECTED),
        .DDRODT(NLW_PS7_inst_DDRODT_UNCONNECTED),
        .DDRRASB(NLW_PS7_inst_DDRRASB_UNCONNECTED),
        .DDRVRN(NLW_PS7_inst_DDRVRN_UNCONNECTED),
        .DDRVRP(NLW_PS7_inst_DDRVRP_UNCONNECTED),
        .DDRWEB(NLW_PS7_inst_DDRWEB_UNCONNECTED),
        .DMA0ACLK(1'b0),
        .DMA0DAREADY(1'b0),
        .DMA0DATYPE(NLW_PS7_inst_DMA0DATYPE_UNCONNECTED[1:0]),
        .DMA0DAVALID(NLW_PS7_inst_DMA0DAVALID_UNCONNECTED),
        .DMA0DRLAST(1'b0),
        .DMA0DRREADY(NLW_PS7_inst_DMA0DRREADY_UNCONNECTED),
        .DMA0DRTYPE({1'b0,1'b0}),
        .DMA0DRVALID(1'b0),
        .DMA0RSTN(NLW_PS7_inst_DMA0RSTN_UNCONNECTED),
        .DMA1ACLK(1'b0),
        .DMA1DAREADY(1'b0),
        .DMA1DATYPE(NLW_PS7_inst_DMA1DATYPE_UNCONNECTED[1:0]),
        .DMA1DAVALID(NLW_PS7_inst_DMA1DAVALID_UNCONNECTED),
        .DMA1DRLAST(1'b0),
        .DMA1DRREADY(NLW_PS7_inst_DMA1DRREADY_UNCONNECTED),
        .DMA1DRTYPE({1'b0,1'b0}),
        .DMA1DRVALID(1'b0),
        .DMA1RSTN(NLW_PS7_inst_DMA1RSTN_UNCONNECTED),
        .DMA2ACLK(1'b0),
        .DMA2DAREADY(1'b0),
        .DMA2DATYPE(NLW_PS7_inst_DMA2DATYPE_UNCONNECTED[1:0]),
        .DMA2DAVALID(NLW_PS7_inst_DMA2DAVALID_UNCONNECTED),
        .DMA2DRLAST(1'b0),
        .DMA2DRREADY(NLW_PS7_inst_DMA2DRREADY_UNCONNECTED),
        .DMA2DRTYPE({1'b0,1'b0}),
        .DMA2DRVALID(1'b0),
        .DMA2RSTN(NLW_PS7_inst_DMA2RSTN_UNCONNECTED),
        .DMA3ACLK(1'b0),
        .DMA3DAREADY(1'b0),
        .DMA3DATYPE(NLW_PS7_inst_DMA3DATYPE_UNCONNECTED[1:0]),
        .DMA3DAVALID(NLW_PS7_inst_DMA3DAVALID_UNCONNECTED),
        .DMA3DRLAST(1'b0),
        .DMA3DRREADY(NLW_PS7_inst_DMA3DRREADY_UNCONNECTED),
        .DMA3DRTYPE({1'b0,1'b0}),
        .DMA3DRVALID(1'b0),
        .DMA3RSTN(NLW_PS7_inst_DMA3RSTN_UNCONNECTED),
        .EMIOCAN0PHYRX(1'b0),
        .EMIOCAN0PHYTX(NLW_PS7_inst_EMIOCAN0PHYTX_UNCONNECTED),
        .EMIOCAN1PHYRX(1'b0),
        .EMIOCAN1PHYTX(NLW_PS7_inst_EMIOCAN1PHYTX_UNCONNECTED),
        .EMIOENET0EXTINTIN(1'b0),
        .EMIOENET0GMIICOL(1'b0),
        .EMIOENET0GMIICRS(1'b0),
        .EMIOENET0GMIIRXCLK(1'b0),
        .EMIOENET0GMIIRXD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .EMIOENET0GMIIRXDV(1'b0),
        .EMIOENET0GMIIRXER(1'b0),
        .EMIOENET0GMIITXCLK(1'b0),
        .EMIOENET0GMIITXD(NLW_PS7_inst_EMIOENET0GMIITXD_UNCONNECTED[7:0]),
        .EMIOENET0GMIITXEN(NLW_PS7_inst_EMIOENET0GMIITXEN_UNCONNECTED),
        .EMIOENET0GMIITXER(NLW_PS7_inst_EMIOENET0GMIITXER_UNCONNECTED),
        .EMIOENET0MDIOI(1'b0),
        .EMIOENET0MDIOMDC(NLW_PS7_inst_EMIOENET0MDIOMDC_UNCONNECTED),
        .EMIOENET0MDIOO(NLW_PS7_inst_EMIOENET0MDIOO_UNCONNECTED),
        .EMIOENET0MDIOTN(NLW_PS7_inst_EMIOENET0MDIOTN_UNCONNECTED),
        .EMIOENET0PTPDELAYREQRX(NLW_PS7_inst_EMIOENET0PTPDELAYREQRX_UNCONNECTED),
        .EMIOENET0PTPDELAYREQTX(NLW_PS7_inst_EMIOENET0PTPDELAYREQTX_UNCONNECTED),
        .EMIOENET0PTPPDELAYREQRX(NLW_PS7_inst_EMIOENET0PTPPDELAYREQRX_UNCONNECTED),
        .EMIOENET0PTPPDELAYREQTX(NLW_PS7_inst_EMIOENET0PTPPDELAYREQTX_UNCONNECTED),
        .EMIOENET0PTPPDELAYRESPRX(NLW_PS7_inst_EMIOENET0PTPPDELAYRESPRX_UNCONNECTED),
        .EMIOENET0PTPPDELAYRESPTX(NLW_PS7_inst_EMIOENET0PTPPDELAYRESPTX_UNCONNECTED),
        .EMIOENET0PTPSYNCFRAMERX(NLW_PS7_inst_EMIOENET0PTPSYNCFRAMERX_UNCONNECTED),
        .EMIOENET0PTPSYNCFRAMETX(NLW_PS7_inst_EMIOENET0PTPSYNCFRAMETX_UNCONNECTED),
        .EMIOENET0SOFRX(NLW_PS7_inst_EMIOENET0SOFRX_UNCONNECTED),
        .EMIOENET0SOFTX(NLW_PS7_inst_EMIOENET0SOFTX_UNCONNECTED),
        .EMIOENET1EXTINTIN(1'b0),
        .EMIOENET1GMIICOL(1'b0),
        .EMIOENET1GMIICRS(1'b0),
        .EMIOENET1GMIIRXCLK(1'b0),
        .EMIOENET1GMIIRXD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .EMIOENET1GMIIRXDV(1'b0),
        .EMIOENET1GMIIRXER(1'b0),
        .EMIOENET1GMIITXCLK(1'b0),
        .EMIOENET1GMIITXD(NLW_PS7_inst_EMIOENET1GMIITXD_UNCONNECTED[7:0]),
        .EMIOENET1GMIITXEN(NLW_PS7_inst_EMIOENET1GMIITXEN_UNCONNECTED),
        .EMIOENET1GMIITXER(NLW_PS7_inst_EMIOENET1GMIITXER_UNCONNECTED),
        .EMIOENET1MDIOI(1'b0),
        .EMIOENET1MDIOMDC(NLW_PS7_inst_EMIOENET1MDIOMDC_UNCONNECTED),
        .EMIOENET1MDIOO(NLW_PS7_inst_EMIOENET1MDIOO_UNCONNECTED),
        .EMIOENET1MDIOTN(NLW_PS7_inst_EMIOENET1MDIOTN_UNCONNECTED),
        .EMIOENET1PTPDELAYREQRX(NLW_PS7_inst_EMIOENET1PTPDELAYREQRX_UNCONNECTED),
        .EMIOENET1PTPDELAYREQTX(NLW_PS7_inst_EMIOENET1PTPDELAYREQTX_UNCONNECTED),
        .EMIOENET1PTPPDELAYREQRX(NLW_PS7_inst_EMIOENET1PTPPDELAYREQRX_UNCONNECTED),
        .EMIOENET1PTPPDELAYREQTX(NLW_PS7_inst_EMIOENET1PTPPDELAYREQTX_UNCONNECTED),
        .EMIOENET1PTPPDELAYRESPRX(NLW_PS7_inst_EMIOENET1PTPPDELAYRESPRX_UNCONNECTED),
        .EMIOENET1PTPPDELAYRESPTX(NLW_PS7_inst_EMIOENET1PTPPDELAYRESPTX_UNCONNECTED),
        .EMIOENET1PTPSYNCFRAMERX(NLW_PS7_inst_EMIOENET1PTPSYNCFRAMERX_UNCONNECTED),
        .EMIOENET1PTPSYNCFRAMETX(NLW_PS7_inst_EMIOENET1PTPSYNCFRAMETX_UNCONNECTED),
        .EMIOENET1SOFRX(NLW_PS7_inst_EMIOENET1SOFRX_UNCONNECTED),
        .EMIOENET1SOFTX(NLW_PS7_inst_EMIOENET1SOFTX_UNCONNECTED),
        .EMIOGPIOI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .EMIOGPIOO(NLW_PS7_inst_EMIOGPIOO_UNCONNECTED[63:0]),
        .EMIOGPIOTN(NLW_PS7_inst_EMIOGPIOTN_UNCONNECTED[63:0]),
        .EMIOI2C0SCLI(1'b0),
        .EMIOI2C0SCLO(NLW_PS7_inst_EMIOI2C0SCLO_UNCONNECTED),
        .EMIOI2C0SCLTN(NLW_PS7_inst_EMIOI2C0SCLTN_UNCONNECTED),
        .EMIOI2C0SDAI(1'b0),
        .EMIOI2C0SDAO(NLW_PS7_inst_EMIOI2C0SDAO_UNCONNECTED),
        .EMIOI2C0SDATN(NLW_PS7_inst_EMIOI2C0SDATN_UNCONNECTED),
        .EMIOI2C1SCLI(i2c_scl_i),
        .EMIOI2C1SCLO(i2c_scl_o),
        .EMIOI2C1SCLTN(i2c1_scl_t_n),
        .EMIOI2C1SDAI(i2c_sda_i),
        .EMIOI2C1SDAO(i2c_sda_o),
        .EMIOI2C1SDATN(i2c1_sda_t_n),
        .EMIOPJTAGTCK(1'b0),
        .EMIOPJTAGTDI(1'b0),
        .EMIOPJTAGTDO(NLW_PS7_inst_EMIOPJTAGTDO_UNCONNECTED),
        .EMIOPJTAGTDTN(NLW_PS7_inst_EMIOPJTAGTDTN_UNCONNECTED),
        .EMIOPJTAGTMS(1'b0),
        .EMIOSDIO0BUSPOW(NLW_PS7_inst_EMIOSDIO0BUSPOW_UNCONNECTED),
        .EMIOSDIO0BUSVOLT(NLW_PS7_inst_EMIOSDIO0BUSVOLT_UNCONNECTED[2:0]),
        .EMIOSDIO0CDN(1'b0),
        .EMIOSDIO0CLK(NLW_PS7_inst_EMIOSDIO0CLK_UNCONNECTED),
        .EMIOSDIO0CLKFB(1'b0),
        .EMIOSDIO0CMDI(1'b0),
        .EMIOSDIO0CMDO(NLW_PS7_inst_EMIOSDIO0CMDO_UNCONNECTED),
        .EMIOSDIO0CMDTN(NLW_PS7_inst_EMIOSDIO0CMDTN_UNCONNECTED),
        .EMIOSDIO0DATAI({1'b0,1'b0,1'b0,1'b0}),
        .EMIOSDIO0DATAO(NLW_PS7_inst_EMIOSDIO0DATAO_UNCONNECTED[3:0]),
        .EMIOSDIO0DATATN(NLW_PS7_inst_EMIOSDIO0DATATN_UNCONNECTED[3:0]),
        .EMIOSDIO0LED(NLW_PS7_inst_EMIOSDIO0LED_UNCONNECTED),
        .EMIOSDIO0WP(1'b0),
        .EMIOSDIO1BUSPOW(NLW_PS7_inst_EMIOSDIO1BUSPOW_UNCONNECTED),
        .EMIOSDIO1BUSVOLT(NLW_PS7_inst_EMIOSDIO1BUSVOLT_UNCONNECTED[2:0]),
        .EMIOSDIO1CDN(1'b0),
        .EMIOSDIO1CLK(NLW_PS7_inst_EMIOSDIO1CLK_UNCONNECTED),
        .EMIOSDIO1CLKFB(1'b0),
        .EMIOSDIO1CMDI(1'b0),
        .EMIOSDIO1CMDO(NLW_PS7_inst_EMIOSDIO1CMDO_UNCONNECTED),
        .EMIOSDIO1CMDTN(NLW_PS7_inst_EMIOSDIO1CMDTN_UNCONNECTED),
        .EMIOSDIO1DATAI({1'b0,1'b0,1'b0,1'b0}),
        .EMIOSDIO1DATAO(NLW_PS7_inst_EMIOSDIO1DATAO_UNCONNECTED[3:0]),
        .EMIOSDIO1DATATN(NLW_PS7_inst_EMIOSDIO1DATATN_UNCONNECTED[3:0]),
        .EMIOSDIO1LED(NLW_PS7_inst_EMIOSDIO1LED_UNCONNECTED),
        .EMIOSDIO1WP(1'b0),
        .EMIOSPI0MI(1'b0),
        .EMIOSPI0MO(NLW_PS7_inst_EMIOSPI0MO_UNCONNECTED),
        .EMIOSPI0MOTN(NLW_PS7_inst_EMIOSPI0MOTN_UNCONNECTED),
        .EMIOSPI0SCLKI(1'b0),
        .EMIOSPI0SCLKO(NLW_PS7_inst_EMIOSPI0SCLKO_UNCONNECTED),
        .EMIOSPI0SCLKTN(NLW_PS7_inst_EMIOSPI0SCLKTN_UNCONNECTED),
        .EMIOSPI0SI(1'b0),
        .EMIOSPI0SO(NLW_PS7_inst_EMIOSPI0SO_UNCONNECTED),
        .EMIOSPI0SSIN(1'b0),
        .EMIOSPI0SSNTN(NLW_PS7_inst_EMIOSPI0SSNTN_UNCONNECTED),
        .EMIOSPI0SSON(NLW_PS7_inst_EMIOSPI0SSON_UNCONNECTED[2:0]),
        .EMIOSPI0STN(NLW_PS7_inst_EMIOSPI0STN_UNCONNECTED),
        .EMIOSPI1MI(1'b0),
        .EMIOSPI1MO(NLW_PS7_inst_EMIOSPI1MO_UNCONNECTED),
        .EMIOSPI1MOTN(NLW_PS7_inst_EMIOSPI1MOTN_UNCONNECTED),
        .EMIOSPI1SCLKI(1'b0),
        .EMIOSPI1SCLKO(NLW_PS7_inst_EMIOSPI1SCLKO_UNCONNECTED),
        .EMIOSPI1SCLKTN(NLW_PS7_inst_EMIOSPI1SCLKTN_UNCONNECTED),
        .EMIOSPI1SI(1'b0),
        .EMIOSPI1SO(NLW_PS7_inst_EMIOSPI1SO_UNCONNECTED),
        .EMIOSPI1SSIN(1'b0),
        .EMIOSPI1SSNTN(NLW_PS7_inst_EMIOSPI1SSNTN_UNCONNECTED),
        .EMIOSPI1SSON(NLW_PS7_inst_EMIOSPI1SSON_UNCONNECTED[2:0]),
        .EMIOSPI1STN(NLW_PS7_inst_EMIOSPI1STN_UNCONNECTED),
        .EMIOSRAMINTIN(1'b0),
        .EMIOTRACECLK(1'b0),
        .EMIOTRACECTL(NLW_PS7_inst_EMIOTRACECTL_UNCONNECTED),
        .EMIOTRACEDATA(NLW_PS7_inst_EMIOTRACEDATA_UNCONNECTED[31:0]),
        .EMIOTTC0CLKI({1'b0,1'b0,1'b0}),
        .EMIOTTC0WAVEO(NLW_PS7_inst_EMIOTTC0WAVEO_UNCONNECTED[2:0]),
        .EMIOTTC1CLKI({1'b0,1'b0,1'b0}),
        .EMIOTTC1WAVEO(NLW_PS7_inst_EMIOTTC1WAVEO_UNCONNECTED[2:0]),
        .EMIOUART0CTSN(1'b0),
        .EMIOUART0DCDN(1'b0),
        .EMIOUART0DSRN(1'b0),
        .EMIOUART0DTRN(NLW_PS7_inst_EMIOUART0DTRN_UNCONNECTED),
        .EMIOUART0RIN(1'b0),
        .EMIOUART0RTSN(NLW_PS7_inst_EMIOUART0RTSN_UNCONNECTED),
        .EMIOUART0RX(1'b0),
        .EMIOUART0TX(NLW_PS7_inst_EMIOUART0TX_UNCONNECTED),
        .EMIOUART1CTSN(1'b0),
        .EMIOUART1DCDN(1'b0),
        .EMIOUART1DSRN(1'b0),
        .EMIOUART1DTRN(NLW_PS7_inst_EMIOUART1DTRN_UNCONNECTED),
        .EMIOUART1RIN(1'b0),
        .EMIOUART1RTSN(NLW_PS7_inst_EMIOUART1RTSN_UNCONNECTED),
        .EMIOUART1RX(1'b0),
        .EMIOUART1TX(NLW_PS7_inst_EMIOUART1TX_UNCONNECTED),
        .EMIOUSB0PORTINDCTL(NLW_PS7_inst_EMIOUSB0PORTINDCTL_UNCONNECTED[1:0]),
        .EMIOUSB0VBUSPWRFAULT(1'b0),
        .EMIOUSB0VBUSPWRSELECT(NLW_PS7_inst_EMIOUSB0VBUSPWRSELECT_UNCONNECTED),
        .EMIOUSB1PORTINDCTL(NLW_PS7_inst_EMIOUSB1PORTINDCTL_UNCONNECTED[1:0]),
        .EMIOUSB1VBUSPWRFAULT(1'b0),
        .EMIOUSB1VBUSPWRSELECT(NLW_PS7_inst_EMIOUSB1VBUSPWRSELECT_UNCONNECTED),
        .EMIOWDTCLKI(1'b0),
        .EMIOWDTRSTO(NLW_PS7_inst_EMIOWDTRSTO_UNCONNECTED),
        .EVENTEVENTI(1'b0),
        .EVENTEVENTO(NLW_PS7_inst_EVENTEVENTO_UNCONNECTED),
        .EVENTSTANDBYWFE(NLW_PS7_inst_EVENTSTANDBYWFE_UNCONNECTED[1:0]),
        .EVENTSTANDBYWFI(NLW_PS7_inst_EVENTSTANDBYWFI_UNCONNECTED[1:0]),
        .FCLKCLK({NLW_PS7_inst_FCLKCLK_UNCONNECTED[3:1],FCLKCLK}),
        .FCLKCLKTRIGN({1'b0,1'b0,1'b0,1'b0}),
        .FCLKRESETN(NLW_PS7_inst_FCLKRESETN_UNCONNECTED[3:0]),
        .FPGAIDLEN(1'b0),
        .FTMDTRACEINATID({1'b0,1'b0,1'b0,1'b0}),
        .FTMDTRACEINCLOCK(1'b0),
        .FTMDTRACEINDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .FTMDTRACEINVALID(1'b0),
        .FTMTF2PDEBUG({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .FTMTF2PTRIG({1'b0,1'b0,1'b0,1'b0}),
        .FTMTF2PTRIGACK(NLW_PS7_inst_FTMTF2PTRIGACK_UNCONNECTED[3:0]),
        .FTMTP2FDEBUG(NLW_PS7_inst_FTMTP2FDEBUG_UNCONNECTED[31:0]),
        .FTMTP2FTRIG(NLW_PS7_inst_FTMTP2FTRIG_UNCONNECTED[3:0]),
        .FTMTP2FTRIGACK({1'b0,1'b0,1'b0,1'b0}),
        .IRQF2P({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IRQP2F(NLW_PS7_inst_IRQP2F_UNCONNECTED[28:0]),
        .MAXIGP0ACLK(1'b0),
        .MAXIGP0ARADDR(NLW_PS7_inst_MAXIGP0ARADDR_UNCONNECTED[31:0]),
        .MAXIGP0ARBURST(NLW_PS7_inst_MAXIGP0ARBURST_UNCONNECTED[1:0]),
        .MAXIGP0ARCACHE(NLW_PS7_inst_MAXIGP0ARCACHE_UNCONNECTED[3:0]),
        .MAXIGP0ARESETN(NLW_PS7_inst_MAXIGP0ARESETN_UNCONNECTED),
        .MAXIGP0ARID(NLW_PS7_inst_MAXIGP0ARID_UNCONNECTED[11:0]),
        .MAXIGP0ARLEN(NLW_PS7_inst_MAXIGP0ARLEN_UNCONNECTED[3:0]),
        .MAXIGP0ARLOCK(NLW_PS7_inst_MAXIGP0ARLOCK_UNCONNECTED[1:0]),
        .MAXIGP0ARPROT(NLW_PS7_inst_MAXIGP0ARPROT_UNCONNECTED[2:0]),
        .MAXIGP0ARQOS(NLW_PS7_inst_MAXIGP0ARQOS_UNCONNECTED[3:0]),
        .MAXIGP0ARREADY(1'b0),
        .MAXIGP0ARSIZE(NLW_PS7_inst_MAXIGP0ARSIZE_UNCONNECTED[1:0]),
        .MAXIGP0ARVALID(NLW_PS7_inst_MAXIGP0ARVALID_UNCONNECTED),
        .MAXIGP0AWADDR(NLW_PS7_inst_MAXIGP0AWADDR_UNCONNECTED[31:0]),
        .MAXIGP0AWBURST(NLW_PS7_inst_MAXIGP0AWBURST_UNCONNECTED[1:0]),
        .MAXIGP0AWCACHE(NLW_PS7_inst_MAXIGP0AWCACHE_UNCONNECTED[3:0]),
        .MAXIGP0AWID(NLW_PS7_inst_MAXIGP0AWID_UNCONNECTED[11:0]),
        .MAXIGP0AWLEN(NLW_PS7_inst_MAXIGP0AWLEN_UNCONNECTED[3:0]),
        .MAXIGP0AWLOCK(NLW_PS7_inst_MAXIGP0AWLOCK_UNCONNECTED[1:0]),
        .MAXIGP0AWPROT(NLW_PS7_inst_MAXIGP0AWPROT_UNCONNECTED[2:0]),
        .MAXIGP0AWQOS(NLW_PS7_inst_MAXIGP0AWQOS_UNCONNECTED[3:0]),
        .MAXIGP0AWREADY(1'b0),
        .MAXIGP0AWSIZE(NLW_PS7_inst_MAXIGP0AWSIZE_UNCONNECTED[1:0]),
        .MAXIGP0AWVALID(NLW_PS7_inst_MAXIGP0AWVALID_UNCONNECTED),
        .MAXIGP0BID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MAXIGP0BREADY(NLW_PS7_inst_MAXIGP0BREADY_UNCONNECTED),
        .MAXIGP0BRESP({1'b0,1'b0}),
        .MAXIGP0BVALID(1'b0),
        .MAXIGP0RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MAXIGP0RID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MAXIGP0RLAST(1'b1),
        .MAXIGP0RREADY(NLW_PS7_inst_MAXIGP0RREADY_UNCONNECTED),
        .MAXIGP0RRESP({1'b0,1'b0}),
        .MAXIGP0RVALID(1'b0),
        .MAXIGP0WDATA(NLW_PS7_inst_MAXIGP0WDATA_UNCONNECTED[31:0]),
        .MAXIGP0WID(NLW_PS7_inst_MAXIGP0WID_UNCONNECTED[11:0]),
        .MAXIGP0WLAST(NLW_PS7_inst_MAXIGP0WLAST_UNCONNECTED),
        .MAXIGP0WREADY(1'b0),
        .MAXIGP0WSTRB(NLW_PS7_inst_MAXIGP0WSTRB_UNCONNECTED[3:0]),
        .MAXIGP0WVALID(NLW_PS7_inst_MAXIGP0WVALID_UNCONNECTED),
        .MAXIGP1ACLK(1'b0),
        .MAXIGP1ARADDR(NLW_PS7_inst_MAXIGP1ARADDR_UNCONNECTED[31:0]),
        .MAXIGP1ARBURST(NLW_PS7_inst_MAXIGP1ARBURST_UNCONNECTED[1:0]),
        .MAXIGP1ARCACHE(NLW_PS7_inst_MAXIGP1ARCACHE_UNCONNECTED[3:0]),
        .MAXIGP1ARESETN(NLW_PS7_inst_MAXIGP1ARESETN_UNCONNECTED),
        .MAXIGP1ARID(NLW_PS7_inst_MAXIGP1ARID_UNCONNECTED[11:0]),
        .MAXIGP1ARLEN(NLW_PS7_inst_MAXIGP1ARLEN_UNCONNECTED[3:0]),
        .MAXIGP1ARLOCK(NLW_PS7_inst_MAXIGP1ARLOCK_UNCONNECTED[1:0]),
        .MAXIGP1ARPROT(NLW_PS7_inst_MAXIGP1ARPROT_UNCONNECTED[2:0]),
        .MAXIGP1ARQOS(NLW_PS7_inst_MAXIGP1ARQOS_UNCONNECTED[3:0]),
        .MAXIGP1ARREADY(1'b0),
        .MAXIGP1ARSIZE(NLW_PS7_inst_MAXIGP1ARSIZE_UNCONNECTED[1:0]),
        .MAXIGP1ARVALID(NLW_PS7_inst_MAXIGP1ARVALID_UNCONNECTED),
        .MAXIGP1AWADDR(NLW_PS7_inst_MAXIGP1AWADDR_UNCONNECTED[31:0]),
        .MAXIGP1AWBURST(NLW_PS7_inst_MAXIGP1AWBURST_UNCONNECTED[1:0]),
        .MAXIGP1AWCACHE(NLW_PS7_inst_MAXIGP1AWCACHE_UNCONNECTED[3:0]),
        .MAXIGP1AWID(NLW_PS7_inst_MAXIGP1AWID_UNCONNECTED[11:0]),
        .MAXIGP1AWLEN(NLW_PS7_inst_MAXIGP1AWLEN_UNCONNECTED[3:0]),
        .MAXIGP1AWLOCK(NLW_PS7_inst_MAXIGP1AWLOCK_UNCONNECTED[1:0]),
        .MAXIGP1AWPROT(NLW_PS7_inst_MAXIGP1AWPROT_UNCONNECTED[2:0]),
        .MAXIGP1AWQOS(NLW_PS7_inst_MAXIGP1AWQOS_UNCONNECTED[3:0]),
        .MAXIGP1AWREADY(1'b0),
        .MAXIGP1AWSIZE(NLW_PS7_inst_MAXIGP1AWSIZE_UNCONNECTED[1:0]),
        .MAXIGP1AWVALID(NLW_PS7_inst_MAXIGP1AWVALID_UNCONNECTED),
        .MAXIGP1BID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MAXIGP1BREADY(NLW_PS7_inst_MAXIGP1BREADY_UNCONNECTED),
        .MAXIGP1BRESP({1'b0,1'b0}),
        .MAXIGP1BVALID(1'b0),
        .MAXIGP1RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MAXIGP1RID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MAXIGP1RLAST(1'b1),
        .MAXIGP1RREADY(NLW_PS7_inst_MAXIGP1RREADY_UNCONNECTED),
        .MAXIGP1RRESP({1'b0,1'b0}),
        .MAXIGP1RVALID(1'b0),
        .MAXIGP1WDATA(NLW_PS7_inst_MAXIGP1WDATA_UNCONNECTED[31:0]),
        .MAXIGP1WID(NLW_PS7_inst_MAXIGP1WID_UNCONNECTED[11:0]),
        .MAXIGP1WLAST(NLW_PS7_inst_MAXIGP1WLAST_UNCONNECTED),
        .MAXIGP1WREADY(1'b0),
        .MAXIGP1WSTRB(NLW_PS7_inst_MAXIGP1WSTRB_UNCONNECTED[3:0]),
        .MAXIGP1WVALID(NLW_PS7_inst_MAXIGP1WVALID_UNCONNECTED),
        .MIO(NLW_PS7_inst_MIO_UNCONNECTED[53:0]),
        .PSCLK(NLW_PS7_inst_PSCLK_UNCONNECTED),
        .PSPORB(NLW_PS7_inst_PSPORB_UNCONNECTED),
        .PSSRSTB(NLW_PS7_inst_PSSRSTB_UNCONNECTED),
        .SAXIACPACLK(1'b0),
        .SAXIACPARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIACPARBURST({1'b0,1'b0}),
        .SAXIACPARCACHE({1'b0,1'b0,1'b0,1'b0}),
        .SAXIACPARESETN(NLW_PS7_inst_SAXIACPARESETN_UNCONNECTED),
        .SAXIACPARID({1'b0,1'b0,1'b0}),
        .SAXIACPARLEN({1'b0,1'b0,1'b0,1'b0}),
        .SAXIACPARLOCK({1'b0,1'b0}),
        .SAXIACPARPROT({1'b0,1'b0,1'b0}),
        .SAXIACPARQOS({1'b0,1'b0,1'b0,1'b0}),
        .SAXIACPARREADY(NLW_PS7_inst_SAXIACPARREADY_UNCONNECTED),
        .SAXIACPARSIZE({1'b0,1'b0}),
        .SAXIACPARUSER({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIACPARVALID(1'b0),
        .SAXIACPAWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIACPAWBURST({1'b0,1'b0}),
        .SAXIACPAWCACHE({1'b0,1'b0,1'b0,1'b0}),
        .SAXIACPAWID({1'b0,1'b0,1'b0}),
        .SAXIACPAWLEN({1'b0,1'b0,1'b0,1'b0}),
        .SAXIACPAWLOCK({1'b0,1'b0}),
        .SAXIACPAWPROT({1'b0,1'b0,1'b0}),
        .SAXIACPAWQOS({1'b0,1'b0,1'b0,1'b0}),
        .SAXIACPAWREADY(NLW_PS7_inst_SAXIACPAWREADY_UNCONNECTED),
        .SAXIACPAWSIZE({1'b0,1'b0}),
        .SAXIACPAWUSER({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIACPAWVALID(1'b0),
        .SAXIACPBID(NLW_PS7_inst_SAXIACPBID_UNCONNECTED[2:0]),
        .SAXIACPBREADY(1'b0),
        .SAXIACPBRESP(NLW_PS7_inst_SAXIACPBRESP_UNCONNECTED[1:0]),
        .SAXIACPBVALID(NLW_PS7_inst_SAXIACPBVALID_UNCONNECTED),
        .SAXIACPRDATA(NLW_PS7_inst_SAXIACPRDATA_UNCONNECTED[63:0]),
        .SAXIACPRID(NLW_PS7_inst_SAXIACPRID_UNCONNECTED[2:0]),
        .SAXIACPRLAST(NLW_PS7_inst_SAXIACPRLAST_UNCONNECTED),
        .SAXIACPRREADY(1'b0),
        .SAXIACPRRESP(NLW_PS7_inst_SAXIACPRRESP_UNCONNECTED[1:0]),
        .SAXIACPRVALID(NLW_PS7_inst_SAXIACPRVALID_UNCONNECTED),
        .SAXIACPWDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIACPWID({1'b0,1'b0,1'b0}),
        .SAXIACPWLAST(1'b0),
        .SAXIACPWREADY(NLW_PS7_inst_SAXIACPWREADY_UNCONNECTED),
        .SAXIACPWSTRB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIACPWVALID(1'b0),
        .SAXIGP0ACLK(1'b0),
        .SAXIGP0ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP0ARBURST({1'b0,1'b0}),
        .SAXIGP0ARCACHE({1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP0ARESETN(NLW_PS7_inst_SAXIGP0ARESETN_UNCONNECTED),
        .SAXIGP0ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP0ARLEN({1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP0ARLOCK({1'b0,1'b0}),
        .SAXIGP0ARPROT({1'b0,1'b0,1'b0}),
        .SAXIGP0ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP0ARREADY(NLW_PS7_inst_SAXIGP0ARREADY_UNCONNECTED),
        .SAXIGP0ARSIZE({1'b0,1'b0}),
        .SAXIGP0ARVALID(1'b0),
        .SAXIGP0AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP0AWBURST({1'b0,1'b0}),
        .SAXIGP0AWCACHE({1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP0AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP0AWLEN({1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP0AWLOCK({1'b0,1'b0}),
        .SAXIGP0AWPROT({1'b0,1'b0,1'b0}),
        .SAXIGP0AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP0AWREADY(NLW_PS7_inst_SAXIGP0AWREADY_UNCONNECTED),
        .SAXIGP0AWSIZE({1'b0,1'b0}),
        .SAXIGP0AWVALID(1'b0),
        .SAXIGP0BID(NLW_PS7_inst_SAXIGP0BID_UNCONNECTED[5:0]),
        .SAXIGP0BREADY(1'b0),
        .SAXIGP0BRESP(NLW_PS7_inst_SAXIGP0BRESP_UNCONNECTED[1:0]),
        .SAXIGP0BVALID(NLW_PS7_inst_SAXIGP0BVALID_UNCONNECTED),
        .SAXIGP0RDATA(NLW_PS7_inst_SAXIGP0RDATA_UNCONNECTED[31:0]),
        .SAXIGP0RID(NLW_PS7_inst_SAXIGP0RID_UNCONNECTED[5:0]),
        .SAXIGP0RLAST(NLW_PS7_inst_SAXIGP0RLAST_UNCONNECTED),
        .SAXIGP0RREADY(1'b0),
        .SAXIGP0RRESP(NLW_PS7_inst_SAXIGP0RRESP_UNCONNECTED[1:0]),
        .SAXIGP0RVALID(NLW_PS7_inst_SAXIGP0RVALID_UNCONNECTED),
        .SAXIGP0WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP0WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP0WLAST(1'b0),
        .SAXIGP0WREADY(NLW_PS7_inst_SAXIGP0WREADY_UNCONNECTED),
        .SAXIGP0WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP0WVALID(1'b0),
        .SAXIGP1ACLK(1'b0),
        .SAXIGP1ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP1ARBURST({1'b0,1'b0}),
        .SAXIGP1ARCACHE({1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP1ARESETN(NLW_PS7_inst_SAXIGP1ARESETN_UNCONNECTED),
        .SAXIGP1ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP1ARLEN({1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP1ARLOCK({1'b0,1'b0}),
        .SAXIGP1ARPROT({1'b0,1'b0,1'b0}),
        .SAXIGP1ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP1ARREADY(NLW_PS7_inst_SAXIGP1ARREADY_UNCONNECTED),
        .SAXIGP1ARSIZE({1'b0,1'b0}),
        .SAXIGP1ARVALID(1'b0),
        .SAXIGP1AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP1AWBURST({1'b0,1'b0}),
        .SAXIGP1AWCACHE({1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP1AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP1AWLEN({1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP1AWLOCK({1'b0,1'b0}),
        .SAXIGP1AWPROT({1'b0,1'b0,1'b0}),
        .SAXIGP1AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP1AWREADY(NLW_PS7_inst_SAXIGP1AWREADY_UNCONNECTED),
        .SAXIGP1AWSIZE({1'b0,1'b0}),
        .SAXIGP1AWVALID(1'b0),
        .SAXIGP1BID(NLW_PS7_inst_SAXIGP1BID_UNCONNECTED[5:0]),
        .SAXIGP1BREADY(1'b0),
        .SAXIGP1BRESP(NLW_PS7_inst_SAXIGP1BRESP_UNCONNECTED[1:0]),
        .SAXIGP1BVALID(NLW_PS7_inst_SAXIGP1BVALID_UNCONNECTED),
        .SAXIGP1RDATA(NLW_PS7_inst_SAXIGP1RDATA_UNCONNECTED[31:0]),
        .SAXIGP1RID(NLW_PS7_inst_SAXIGP1RID_UNCONNECTED[5:0]),
        .SAXIGP1RLAST(NLW_PS7_inst_SAXIGP1RLAST_UNCONNECTED),
        .SAXIGP1RREADY(1'b0),
        .SAXIGP1RRESP(NLW_PS7_inst_SAXIGP1RRESP_UNCONNECTED[1:0]),
        .SAXIGP1RVALID(NLW_PS7_inst_SAXIGP1RVALID_UNCONNECTED),
        .SAXIGP1WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP1WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP1WLAST(1'b0),
        .SAXIGP1WREADY(NLW_PS7_inst_SAXIGP1WREADY_UNCONNECTED),
        .SAXIGP1WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .SAXIGP1WVALID(1'b0),
        .SAXIHP0ACLK(1'b0),
        .SAXIHP0ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP0ARBURST({1'b0,1'b1}),
        .SAXIHP0ARCACHE({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP0ARESETN(NLW_PS7_inst_SAXIHP0ARESETN_UNCONNECTED),
        .SAXIHP0ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP0ARLEN({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP0ARLOCK({1'b0,1'b0}),
        .SAXIHP0ARPROT({1'b0,1'b0,1'b0}),
        .SAXIHP0ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP0ARREADY(NLW_PS7_inst_SAXIHP0ARREADY_UNCONNECTED),
        .SAXIHP0ARSIZE({1'b1,1'b1}),
        .SAXIHP0ARVALID(1'b0),
        .SAXIHP0AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP0AWBURST({1'b0,1'b1}),
        .SAXIHP0AWCACHE({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP0AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP0AWLEN({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP0AWLOCK({1'b0,1'b0}),
        .SAXIHP0AWPROT({1'b0,1'b0,1'b0}),
        .SAXIHP0AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP0AWREADY(NLW_PS7_inst_SAXIHP0AWREADY_UNCONNECTED),
        .SAXIHP0AWSIZE({1'b1,1'b1}),
        .SAXIHP0AWVALID(1'b0),
        .SAXIHP0BID(NLW_PS7_inst_SAXIHP0BID_UNCONNECTED[5:0]),
        .SAXIHP0BREADY(1'b0),
        .SAXIHP0BRESP(NLW_PS7_inst_SAXIHP0BRESP_UNCONNECTED[1:0]),
        .SAXIHP0BVALID(NLW_PS7_inst_SAXIHP0BVALID_UNCONNECTED),
        .SAXIHP0RACOUNT(NLW_PS7_inst_SAXIHP0RACOUNT_UNCONNECTED[2:0]),
        .SAXIHP0RCOUNT(NLW_PS7_inst_SAXIHP0RCOUNT_UNCONNECTED[7:0]),
        .SAXIHP0RDATA(NLW_PS7_inst_SAXIHP0RDATA_UNCONNECTED[63:0]),
        .SAXIHP0RDISSUECAP1EN(1'b0),
        .SAXIHP0RID(NLW_PS7_inst_SAXIHP0RID_UNCONNECTED[5:0]),
        .SAXIHP0RLAST(NLW_PS7_inst_SAXIHP0RLAST_UNCONNECTED),
        .SAXIHP0RREADY(1'b0),
        .SAXIHP0RRESP(NLW_PS7_inst_SAXIHP0RRESP_UNCONNECTED[1:0]),
        .SAXIHP0RVALID(NLW_PS7_inst_SAXIHP0RVALID_UNCONNECTED),
        .SAXIHP0WACOUNT(NLW_PS7_inst_SAXIHP0WACOUNT_UNCONNECTED[5:0]),
        .SAXIHP0WCOUNT(NLW_PS7_inst_SAXIHP0WCOUNT_UNCONNECTED[7:0]),
        .SAXIHP0WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP0WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP0WLAST(1'b0),
        .SAXIHP0WREADY(NLW_PS7_inst_SAXIHP0WREADY_UNCONNECTED),
        .SAXIHP0WRISSUECAP1EN(1'b0),
        .SAXIHP0WSTRB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP0WVALID(1'b0),
        .SAXIHP1ACLK(1'b0),
        .SAXIHP1ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP1ARBURST({1'b0,1'b1}),
        .SAXIHP1ARCACHE({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP1ARESETN(NLW_PS7_inst_SAXIHP1ARESETN_UNCONNECTED),
        .SAXIHP1ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP1ARLEN({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP1ARLOCK({1'b0,1'b0}),
        .SAXIHP1ARPROT({1'b0,1'b0,1'b0}),
        .SAXIHP1ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP1ARREADY(NLW_PS7_inst_SAXIHP1ARREADY_UNCONNECTED),
        .SAXIHP1ARSIZE({1'b1,1'b1}),
        .SAXIHP1ARVALID(1'b0),
        .SAXIHP1AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP1AWBURST({1'b0,1'b1}),
        .SAXIHP1AWCACHE({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP1AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP1AWLEN({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP1AWLOCK({1'b0,1'b0}),
        .SAXIHP1AWPROT({1'b0,1'b0,1'b0}),
        .SAXIHP1AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP1AWREADY(NLW_PS7_inst_SAXIHP1AWREADY_UNCONNECTED),
        .SAXIHP1AWSIZE({1'b1,1'b1}),
        .SAXIHP1AWVALID(1'b0),
        .SAXIHP1BID(NLW_PS7_inst_SAXIHP1BID_UNCONNECTED[5:0]),
        .SAXIHP1BREADY(1'b0),
        .SAXIHP1BRESP(NLW_PS7_inst_SAXIHP1BRESP_UNCONNECTED[1:0]),
        .SAXIHP1BVALID(NLW_PS7_inst_SAXIHP1BVALID_UNCONNECTED),
        .SAXIHP1RACOUNT(NLW_PS7_inst_SAXIHP1RACOUNT_UNCONNECTED[2:0]),
        .SAXIHP1RCOUNT(NLW_PS7_inst_SAXIHP1RCOUNT_UNCONNECTED[7:0]),
        .SAXIHP1RDATA(NLW_PS7_inst_SAXIHP1RDATA_UNCONNECTED[63:0]),
        .SAXIHP1RDISSUECAP1EN(1'b0),
        .SAXIHP1RID(NLW_PS7_inst_SAXIHP1RID_UNCONNECTED[5:0]),
        .SAXIHP1RLAST(NLW_PS7_inst_SAXIHP1RLAST_UNCONNECTED),
        .SAXIHP1RREADY(1'b0),
        .SAXIHP1RRESP(NLW_PS7_inst_SAXIHP1RRESP_UNCONNECTED[1:0]),
        .SAXIHP1RVALID(NLW_PS7_inst_SAXIHP1RVALID_UNCONNECTED),
        .SAXIHP1WACOUNT(NLW_PS7_inst_SAXIHP1WACOUNT_UNCONNECTED[5:0]),
        .SAXIHP1WCOUNT(NLW_PS7_inst_SAXIHP1WCOUNT_UNCONNECTED[7:0]),
        .SAXIHP1WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP1WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP1WLAST(1'b0),
        .SAXIHP1WREADY(NLW_PS7_inst_SAXIHP1WREADY_UNCONNECTED),
        .SAXIHP1WRISSUECAP1EN(1'b0),
        .SAXIHP1WSTRB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP1WVALID(1'b0),
        .SAXIHP2ACLK(1'b0),
        .SAXIHP2ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP2ARBURST({1'b0,1'b1}),
        .SAXIHP2ARCACHE({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP2ARESETN(NLW_PS7_inst_SAXIHP2ARESETN_UNCONNECTED),
        .SAXIHP2ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP2ARLEN({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP2ARLOCK({1'b0,1'b0}),
        .SAXIHP2ARPROT({1'b0,1'b0,1'b0}),
        .SAXIHP2ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP2ARREADY(NLW_PS7_inst_SAXIHP2ARREADY_UNCONNECTED),
        .SAXIHP2ARSIZE({1'b1,1'b1}),
        .SAXIHP2ARVALID(1'b0),
        .SAXIHP2AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP2AWBURST({1'b0,1'b0}),
        .SAXIHP2AWCACHE({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP2AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP2AWLEN({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP2AWLOCK({1'b0,1'b0}),
        .SAXIHP2AWPROT({1'b0,1'b0,1'b0}),
        .SAXIHP2AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP2AWREADY(NLW_PS7_inst_SAXIHP2AWREADY_UNCONNECTED),
        .SAXIHP2AWSIZE({1'b1,1'b1}),
        .SAXIHP2AWVALID(1'b0),
        .SAXIHP2BID(NLW_PS7_inst_SAXIHP2BID_UNCONNECTED[5:0]),
        .SAXIHP2BREADY(1'b0),
        .SAXIHP2BRESP(NLW_PS7_inst_SAXIHP2BRESP_UNCONNECTED[1:0]),
        .SAXIHP2BVALID(NLW_PS7_inst_SAXIHP2BVALID_UNCONNECTED),
        .SAXIHP2RACOUNT(NLW_PS7_inst_SAXIHP2RACOUNT_UNCONNECTED[2:0]),
        .SAXIHP2RCOUNT(NLW_PS7_inst_SAXIHP2RCOUNT_UNCONNECTED[7:0]),
        .SAXIHP2RDATA(NLW_PS7_inst_SAXIHP2RDATA_UNCONNECTED[63:0]),
        .SAXIHP2RDISSUECAP1EN(1'b0),
        .SAXIHP2RID(NLW_PS7_inst_SAXIHP2RID_UNCONNECTED[5:0]),
        .SAXIHP2RLAST(NLW_PS7_inst_SAXIHP2RLAST_UNCONNECTED),
        .SAXIHP2RREADY(1'b0),
        .SAXIHP2RRESP(NLW_PS7_inst_SAXIHP2RRESP_UNCONNECTED[1:0]),
        .SAXIHP2RVALID(NLW_PS7_inst_SAXIHP2RVALID_UNCONNECTED),
        .SAXIHP2WACOUNT(NLW_PS7_inst_SAXIHP2WACOUNT_UNCONNECTED[5:0]),
        .SAXIHP2WCOUNT(NLW_PS7_inst_SAXIHP2WCOUNT_UNCONNECTED[7:0]),
        .SAXIHP2WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP2WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP2WLAST(1'b0),
        .SAXIHP2WREADY(NLW_PS7_inst_SAXIHP2WREADY_UNCONNECTED),
        .SAXIHP2WRISSUECAP1EN(1'b0),
        .SAXIHP2WSTRB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP2WVALID(1'b0),
        .SAXIHP3ACLK(1'b0),
        .SAXIHP3ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP3ARBURST({1'b0,1'b0}),
        .SAXIHP3ARCACHE({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP3ARESETN(NLW_PS7_inst_SAXIHP3ARESETN_UNCONNECTED),
        .SAXIHP3ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP3ARLEN({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP3ARLOCK({1'b0,1'b0}),
        .SAXIHP3ARPROT({1'b0,1'b0,1'b0}),
        .SAXIHP3ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP3ARREADY(NLW_PS7_inst_SAXIHP3ARREADY_UNCONNECTED),
        .SAXIHP3ARSIZE({1'b1,1'b1}),
        .SAXIHP3ARVALID(1'b0),
        .SAXIHP3AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP3AWBURST({1'b0,1'b0}),
        .SAXIHP3AWCACHE({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP3AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP3AWLEN({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP3AWLOCK({1'b0,1'b0}),
        .SAXIHP3AWPROT({1'b0,1'b0,1'b0}),
        .SAXIHP3AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP3AWREADY(NLW_PS7_inst_SAXIHP3AWREADY_UNCONNECTED),
        .SAXIHP3AWSIZE({1'b1,1'b1}),
        .SAXIHP3AWVALID(1'b0),
        .SAXIHP3BID(NLW_PS7_inst_SAXIHP3BID_UNCONNECTED[5:0]),
        .SAXIHP3BREADY(1'b0),
        .SAXIHP3BRESP(NLW_PS7_inst_SAXIHP3BRESP_UNCONNECTED[1:0]),
        .SAXIHP3BVALID(NLW_PS7_inst_SAXIHP3BVALID_UNCONNECTED),
        .SAXIHP3RACOUNT(NLW_PS7_inst_SAXIHP3RACOUNT_UNCONNECTED[2:0]),
        .SAXIHP3RCOUNT(NLW_PS7_inst_SAXIHP3RCOUNT_UNCONNECTED[7:0]),
        .SAXIHP3RDATA(NLW_PS7_inst_SAXIHP3RDATA_UNCONNECTED[63:0]),
        .SAXIHP3RDISSUECAP1EN(1'b0),
        .SAXIHP3RID(NLW_PS7_inst_SAXIHP3RID_UNCONNECTED[5:0]),
        .SAXIHP3RLAST(NLW_PS7_inst_SAXIHP3RLAST_UNCONNECTED),
        .SAXIHP3RREADY(1'b0),
        .SAXIHP3RRESP(NLW_PS7_inst_SAXIHP3RRESP_UNCONNECTED[1:0]),
        .SAXIHP3RVALID(NLW_PS7_inst_SAXIHP3RVALID_UNCONNECTED),
        .SAXIHP3WACOUNT(NLW_PS7_inst_SAXIHP3WACOUNT_UNCONNECTED[5:0]),
        .SAXIHP3WCOUNT(NLW_PS7_inst_SAXIHP3WCOUNT_UNCONNECTED[7:0]),
        .SAXIHP3WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP3WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP3WLAST(1'b0),
        .SAXIHP3WREADY(NLW_PS7_inst_SAXIHP3WREADY_UNCONNECTED),
        .SAXIHP3WRISSUECAP1EN(1'b0),
        .SAXIHP3WSTRB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SAXIHP3WVALID(1'b0));
endmodule

module serdes_10_1
   (DATA_LANE_0_P,
    DATA_LANE_0_N,
    sclk,
    CLK,
    data_in,
    rst);
  output DATA_LANE_0_P;
  output DATA_LANE_0_N;
  input sclk;
  input CLK;
  input [9:0]data_in;
  input rst;

  wire CLK;
  wire DATA_LANE_0_N;
  wire DATA_LANE_0_P;
  wire OQ;
  wire SHIFTOUT1;
  wire SHIFTOUT2;
  wire [9:0]data_in;
  wire rst;
  wire sclk;
  wire NLW_master_serdes_inst_data0_OFB_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_SHIFTOUT1_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_SHIFTOUT2_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_TBYTEOUT_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_TFB_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_TQ_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_OFB_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_OQ_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_TBYTEOUT_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_TFB_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_TQ_UNCONNECTED;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_inst
       (.I(OQ),
        .O(DATA_LANE_0_P),
        .OB(DATA_LANE_0_N));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    master_serdes_inst_data0
       (.CLK(sclk),
        .CLKDIV(CLK),
        .D1(data_in[0]),
        .D2(data_in[1]),
        .D3(data_in[2]),
        .D4(data_in[3]),
        .D5(data_in[4]),
        .D6(data_in[5]),
        .D7(data_in[6]),
        .D8(data_in[7]),
        .OCE(1'b1),
        .OFB(NLW_master_serdes_inst_data0_OFB_UNCONNECTED),
        .OQ(OQ),
        .RST(rst),
        .SHIFTIN1(SHIFTOUT1),
        .SHIFTIN2(SHIFTOUT2),
        .SHIFTOUT1(NLW_master_serdes_inst_data0_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_master_serdes_inst_data0_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_master_serdes_inst_data0_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_master_serdes_inst_data0_TFB_UNCONNECTED),
        .TQ(NLW_master_serdes_inst_data0_TQ_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b1),
    .INIT_TQ(1'b1),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    slave_serdes_inst_data0
       (.CLK(sclk),
        .CLKDIV(CLK),
        .D1(1'b0),
        .D2(1'b0),
        .D3(data_in[8]),
        .D4(data_in[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_slave_serdes_inst_data0_OFB_UNCONNECTED),
        .OQ(NLW_slave_serdes_inst_data0_OQ_UNCONNECTED),
        .RST(rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(SHIFTOUT1),
        .SHIFTOUT2(SHIFTOUT2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_slave_serdes_inst_data0_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_slave_serdes_inst_data0_TFB_UNCONNECTED),
        .TQ(NLW_slave_serdes_inst_data0_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "serdes_10_1" *) 
module serdes_10_1_0
   (DATA_LANE_1_P,
    DATA_LANE_1_N,
    sclk,
    CLK,
    data_in,
    rst);
  output DATA_LANE_1_P;
  output DATA_LANE_1_N;
  input sclk;
  input CLK;
  input [9:0]data_in;
  input rst;

  wire CLK;
  wire DATA_LANE_1_N;
  wire DATA_LANE_1_P;
  wire OQ;
  wire SHIFTOUT1;
  wire SHIFTOUT2;
  wire [9:0]data_in;
  wire rst;
  wire sclk;
  wire NLW_master_serdes_inst_data0_OFB_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_SHIFTOUT1_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_SHIFTOUT2_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_TBYTEOUT_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_TFB_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_TQ_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_OFB_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_OQ_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_TBYTEOUT_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_TFB_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_TQ_UNCONNECTED;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_inst
       (.I(OQ),
        .O(DATA_LANE_1_P),
        .OB(DATA_LANE_1_N));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    master_serdes_inst_data0
       (.CLK(sclk),
        .CLKDIV(CLK),
        .D1(data_in[0]),
        .D2(data_in[1]),
        .D3(data_in[2]),
        .D4(data_in[3]),
        .D5(data_in[4]),
        .D6(data_in[5]),
        .D7(data_in[6]),
        .D8(data_in[7]),
        .OCE(1'b1),
        .OFB(NLW_master_serdes_inst_data0_OFB_UNCONNECTED),
        .OQ(OQ),
        .RST(rst),
        .SHIFTIN1(SHIFTOUT1),
        .SHIFTIN2(SHIFTOUT2),
        .SHIFTOUT1(NLW_master_serdes_inst_data0_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_master_serdes_inst_data0_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_master_serdes_inst_data0_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_master_serdes_inst_data0_TFB_UNCONNECTED),
        .TQ(NLW_master_serdes_inst_data0_TQ_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b1),
    .INIT_TQ(1'b1),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    slave_serdes_inst_data0
       (.CLK(sclk),
        .CLKDIV(CLK),
        .D1(1'b0),
        .D2(1'b0),
        .D3(data_in[8]),
        .D4(data_in[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_slave_serdes_inst_data0_OFB_UNCONNECTED),
        .OQ(NLW_slave_serdes_inst_data0_OQ_UNCONNECTED),
        .RST(rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(SHIFTOUT1),
        .SHIFTOUT2(SHIFTOUT2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_slave_serdes_inst_data0_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_slave_serdes_inst_data0_TFB_UNCONNECTED),
        .TQ(NLW_slave_serdes_inst_data0_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "serdes_10_1" *) 
module serdes_10_1_1
   (DATA_LANE_2_P,
    DATA_LANE_2_N,
    sclk,
    CLK,
    data_in,
    rst);
  output DATA_LANE_2_P;
  output DATA_LANE_2_N;
  input sclk;
  input CLK;
  input [9:0]data_in;
  input rst;

  wire CLK;
  wire DATA_LANE_2_N;
  wire DATA_LANE_2_P;
  wire OQ;
  wire SHIFTOUT1;
  wire SHIFTOUT2;
  wire [9:0]data_in;
  wire rst;
  wire sclk;
  wire NLW_master_serdes_inst_data0_OFB_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_SHIFTOUT1_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_SHIFTOUT2_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_TBYTEOUT_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_TFB_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_TQ_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_OFB_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_OQ_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_TBYTEOUT_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_TFB_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_TQ_UNCONNECTED;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_inst
       (.I(OQ),
        .O(DATA_LANE_2_P),
        .OB(DATA_LANE_2_N));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    master_serdes_inst_data0
       (.CLK(sclk),
        .CLKDIV(CLK),
        .D1(data_in[0]),
        .D2(data_in[1]),
        .D3(data_in[2]),
        .D4(data_in[3]),
        .D5(data_in[4]),
        .D6(data_in[5]),
        .D7(data_in[6]),
        .D8(data_in[7]),
        .OCE(1'b1),
        .OFB(NLW_master_serdes_inst_data0_OFB_UNCONNECTED),
        .OQ(OQ),
        .RST(rst),
        .SHIFTIN1(SHIFTOUT1),
        .SHIFTIN2(SHIFTOUT2),
        .SHIFTOUT1(NLW_master_serdes_inst_data0_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_master_serdes_inst_data0_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_master_serdes_inst_data0_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_master_serdes_inst_data0_TFB_UNCONNECTED),
        .TQ(NLW_master_serdes_inst_data0_TQ_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b1),
    .INIT_TQ(1'b1),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    slave_serdes_inst_data0
       (.CLK(sclk),
        .CLKDIV(CLK),
        .D1(1'b0),
        .D2(1'b0),
        .D3(data_in[8]),
        .D4(data_in[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_slave_serdes_inst_data0_OFB_UNCONNECTED),
        .OQ(NLW_slave_serdes_inst_data0_OQ_UNCONNECTED),
        .RST(rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(SHIFTOUT1),
        .SHIFTOUT2(SHIFTOUT2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_slave_serdes_inst_data0_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_slave_serdes_inst_data0_TFB_UNCONNECTED),
        .TQ(NLW_slave_serdes_inst_data0_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "serdes_10_1" *) 
module serdes_10_1_2
   (DATA_LANE_3_P,
    DATA_LANE_3_N,
    sclk,
    CLK,
    master_serdes_inst_data0_0,
    rst);
  output DATA_LANE_3_P;
  output DATA_LANE_3_N;
  input sclk;
  input CLK;
  input [9:0]master_serdes_inst_data0_0;
  input rst;

  wire CLK;
  wire DATA_LANE_3_N;
  wire DATA_LANE_3_P;
  wire OQ;
  wire SHIFTOUT1;
  wire SHIFTOUT2;
  wire [9:0]master_serdes_inst_data0_0;
  wire rst;
  wire sclk;
  wire NLW_master_serdes_inst_data0_OFB_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_SHIFTOUT1_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_SHIFTOUT2_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_TBYTEOUT_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_TFB_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_TQ_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_OFB_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_OQ_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_TBYTEOUT_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_TFB_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_TQ_UNCONNECTED;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_inst
       (.I(OQ),
        .O(DATA_LANE_3_P),
        .OB(DATA_LANE_3_N));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    master_serdes_inst_data0
       (.CLK(sclk),
        .CLKDIV(CLK),
        .D1(master_serdes_inst_data0_0[0]),
        .D2(master_serdes_inst_data0_0[1]),
        .D3(master_serdes_inst_data0_0[2]),
        .D4(master_serdes_inst_data0_0[3]),
        .D5(master_serdes_inst_data0_0[4]),
        .D6(master_serdes_inst_data0_0[5]),
        .D7(master_serdes_inst_data0_0[6]),
        .D8(master_serdes_inst_data0_0[7]),
        .OCE(1'b1),
        .OFB(NLW_master_serdes_inst_data0_OFB_UNCONNECTED),
        .OQ(OQ),
        .RST(rst),
        .SHIFTIN1(SHIFTOUT1),
        .SHIFTIN2(SHIFTOUT2),
        .SHIFTOUT1(NLW_master_serdes_inst_data0_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_master_serdes_inst_data0_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_master_serdes_inst_data0_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_master_serdes_inst_data0_TFB_UNCONNECTED),
        .TQ(NLW_master_serdes_inst_data0_TQ_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b1),
    .INIT_TQ(1'b1),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    slave_serdes_inst_data0
       (.CLK(sclk),
        .CLKDIV(CLK),
        .D1(1'b0),
        .D2(1'b0),
        .D3(master_serdes_inst_data0_0[8]),
        .D4(master_serdes_inst_data0_0[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_slave_serdes_inst_data0_OFB_UNCONNECTED),
        .OQ(NLW_slave_serdes_inst_data0_OQ_UNCONNECTED),
        .RST(rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(SHIFTOUT1),
        .SHIFTOUT2(SHIFTOUT2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_slave_serdes_inst_data0_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_slave_serdes_inst_data0_TFB_UNCONNECTED),
        .TQ(NLW_slave_serdes_inst_data0_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "serdes_10_1" *) 
module serdes_10_1_3
   (DATA_LANE_4_P,
    DATA_LANE_4_N,
    sclk,
    CLK,
    master_serdes_inst_data0_0,
    rst);
  output DATA_LANE_4_P;
  output DATA_LANE_4_N;
  input sclk;
  input CLK;
  input [9:0]master_serdes_inst_data0_0;
  input rst;

  wire CLK;
  wire DATA_LANE_4_N;
  wire DATA_LANE_4_P;
  wire OQ;
  wire SHIFTOUT1;
  wire SHIFTOUT2;
  wire [9:0]master_serdes_inst_data0_0;
  wire rst;
  wire sclk;
  wire NLW_master_serdes_inst_data0_OFB_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_SHIFTOUT1_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_SHIFTOUT2_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_TBYTEOUT_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_TFB_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_TQ_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_OFB_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_OQ_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_TBYTEOUT_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_TFB_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_TQ_UNCONNECTED;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_inst
       (.I(OQ),
        .O(DATA_LANE_4_P),
        .OB(DATA_LANE_4_N));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    master_serdes_inst_data0
       (.CLK(sclk),
        .CLKDIV(CLK),
        .D1(master_serdes_inst_data0_0[0]),
        .D2(master_serdes_inst_data0_0[1]),
        .D3(master_serdes_inst_data0_0[2]),
        .D4(master_serdes_inst_data0_0[3]),
        .D5(master_serdes_inst_data0_0[4]),
        .D6(master_serdes_inst_data0_0[5]),
        .D7(master_serdes_inst_data0_0[6]),
        .D8(master_serdes_inst_data0_0[7]),
        .OCE(1'b1),
        .OFB(NLW_master_serdes_inst_data0_OFB_UNCONNECTED),
        .OQ(OQ),
        .RST(rst),
        .SHIFTIN1(SHIFTOUT1),
        .SHIFTIN2(SHIFTOUT2),
        .SHIFTOUT1(NLW_master_serdes_inst_data0_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_master_serdes_inst_data0_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_master_serdes_inst_data0_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_master_serdes_inst_data0_TFB_UNCONNECTED),
        .TQ(NLW_master_serdes_inst_data0_TQ_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b1),
    .INIT_TQ(1'b1),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    slave_serdes_inst_data0
       (.CLK(sclk),
        .CLKDIV(CLK),
        .D1(1'b0),
        .D2(1'b0),
        .D3(master_serdes_inst_data0_0[8]),
        .D4(master_serdes_inst_data0_0[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_slave_serdes_inst_data0_OFB_UNCONNECTED),
        .OQ(NLW_slave_serdes_inst_data0_OQ_UNCONNECTED),
        .RST(rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(SHIFTOUT1),
        .SHIFTOUT2(SHIFTOUT2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_slave_serdes_inst_data0_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_slave_serdes_inst_data0_TFB_UNCONNECTED),
        .TQ(NLW_slave_serdes_inst_data0_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "serdes_10_1" *) 
module serdes_10_1__parameterized0
   (CLK_LANE_P,
    CLK_LANE_N,
    sclk,
    CLK,
    rst);
  output CLK_LANE_P;
  output CLK_LANE_N;
  input sclk;
  input CLK;
  input rst;

  wire CLK;
  wire CLK_LANE_N;
  wire CLK_LANE_P;
  wire OQ;
  wire SHIFTOUT1;
  wire SHIFTOUT2;
  wire rst;
  wire sclk;
  wire NLW_master_serdes_inst_data0_OFB_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_SHIFTOUT1_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_SHIFTOUT2_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_TBYTEOUT_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_TFB_UNCONNECTED;
  wire NLW_master_serdes_inst_data0_TQ_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_OFB_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_OQ_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_TBYTEOUT_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_TFB_UNCONNECTED;
  wire NLW_slave_serdes_inst_data0_TQ_UNCONNECTED;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_inst
       (.I(OQ),
        .O(CLK_LANE_P),
        .OB(CLK_LANE_N));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    master_serdes_inst_data0
       (.CLK(sclk),
        .CLKDIV(CLK),
        .D1(1'b1),
        .D2(1'b0),
        .D3(1'b1),
        .D4(1'b0),
        .D5(1'b1),
        .D6(1'b0),
        .D7(1'b1),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_master_serdes_inst_data0_OFB_UNCONNECTED),
        .OQ(OQ),
        .RST(rst),
        .SHIFTIN1(SHIFTOUT1),
        .SHIFTIN2(SHIFTOUT2),
        .SHIFTOUT1(NLW_master_serdes_inst_data0_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_master_serdes_inst_data0_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_master_serdes_inst_data0_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_master_serdes_inst_data0_TFB_UNCONNECTED),
        .TQ(NLW_master_serdes_inst_data0_TQ_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b1),
    .INIT_TQ(1'b1),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    slave_serdes_inst_data0
       (.CLK(sclk),
        .CLKDIV(CLK),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b1),
        .D4(1'b0),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_slave_serdes_inst_data0_OFB_UNCONNECTED),
        .OQ(NLW_slave_serdes_inst_data0_OQ_UNCONNECTED),
        .RST(rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(SHIFTOUT1),
        .SHIFTOUT2(SHIFTOUT2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_slave_serdes_inst_data0_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_slave_serdes_inst_data0_TFB_UNCONNECTED),
        .TQ(NLW_slave_serdes_inst_data0_TQ_UNCONNECTED));
endmodule

(* ECO_CHECKSUM = "4288bbed" *) 
(* NotValidForBitStream *)
module top
   (DATA_LANE_0_P,
    DATA_LANE_0_N,
    DATA_LANE_1_P,
    DATA_LANE_1_N,
    DATA_LANE_2_P,
    DATA_LANE_2_N,
    DATA_LANE_3_P,
    DATA_LANE_3_N,
    DATA_LANE_4_P,
    DATA_LANE_4_N,
    CLK_LANE_P,
    CLK_LANE_N,
    I2C_SCL,
    I2C_SDA);
  output DATA_LANE_0_P;
  output DATA_LANE_0_N;
  output DATA_LANE_1_P;
  output DATA_LANE_1_N;
  output DATA_LANE_2_P;
  output DATA_LANE_2_N;
  output DATA_LANE_3_P;
  output DATA_LANE_3_N;
  output DATA_LANE_4_P;
  output DATA_LANE_4_N;
  output CLK_LANE_P;
  output CLK_LANE_N;
  inout I2C_SCL;
  inout I2C_SDA;

  wire CLKFBIN;
  wire CLKIN1;
  wire CLK_LANE_N;
  wire CLK_LANE_P;
  wire DATA_LANE_0_N;
  wire DATA_LANE_0_P;
  wire DATA_LANE_1_N;
  wire DATA_LANE_1_P;
  wire DATA_LANE_2_N;
  wire DATA_LANE_2_P;
  wire DATA_LANE_3_N;
  wire DATA_LANE_3_P;
  wire DATA_LANE_4_N;
  wire DATA_LANE_4_P;
  (* IBUF_LOW_PWR *) (* PULL = "PULLUP" *) wire I2C_SCL;
  (* IBUF_LOW_PWR *) (* PULL = "PULLUP" *) wire I2C_SDA;
  wire PS7_stub_inst_n_3;
  wire T;
  wire ao0;
  wire bo0;
  wire clk;
  wire clk_bufg;
  wire co0;
  wire compls6__0;
  wire data_gen_inst_n_5;
  wire do0;
  wire [9:0]enc10b_dat;
  wire enc_inst_n_2;
  wire enc_inst_n_3;
  wire eo0;
  wire fi;
  wire gi;
  wire hi;
  wire i2c_scl_i;
  wire i2c_scl_o;
  wire i2c_sda_i;
  wire i2c_sda_o;
  wire io0;
  wire k4;
  wire locked1;
  wire lpdl4;
  wire mode;
  wire pdl6;
  wire ps_fclk_bufg;
  wire rst;
  wire s0;
  wire sclk;
  wire sclk_bufg;
  wire NLW_PLL_BASE_inst1_CLKOUT2_UNCONNECTED;
  wire NLW_PLL_BASE_inst1_CLKOUT3_UNCONNECTED;
  wire NLW_PLL_BASE_inst1_CLKOUT4_UNCONNECTED;
  wire NLW_PLL_BASE_inst1_CLKOUT5_UNCONNECTED;
  wire NLW_PLL_BASE_inst1_DRDY_UNCONNECTED;
  wire [15:0]NLW_PLL_BASE_inst1_DO_UNCONNECTED;

initial begin
 $sdf_annotate("top_time_impl.sdf",,,,"tool_control");
end
  (* box_type = "PRIMITIVE" *) 
  BUFG BUFG_inst0
       (.I(ps_fclk_bufg),
        .O(CLKIN1));
  (* OPT_MODIFIED = "BUFG_OPT " *) 
  (* box_type = "PRIMITIVE" *) 
  BUFG BUFG_inst1
       (.I(sclk_bufg),
        .O(sclk));
  (* OPT_MODIFIED = "BUFG_OPT " *) 
  (* box_type = "PRIMITIVE" *) 
  BUFG BUFG_inst2
       (.I(clk_bufg),
        .O(clk));
  (* IOSTANDARD = "DEFAULT" *) 
  (* IS_CCIO = "FALSE" *) 
  (* box_type = "PRIMITIVE" *) 
  IOBUF_UNIQ_BASE_ IOBUF_scl_inst
       (.I(i2c_scl_o),
        .IO(I2C_SCL),
        .O(i2c_scl_i),
        .T(PS7_stub_inst_n_3));
  (* IOSTANDARD = "DEFAULT" *) 
  (* IS_CCIO = "FALSE" *) 
  (* box_type = "PRIMITIVE" *) 
  IOBUF_HD2 IOBUF_sda_inst
       (.I(i2c_sda_o),
        .IO(I2C_SDA),
        .O(i2c_sda_i),
        .T(T));
  (* OPT_MODIFIED = "BUFG_OPT " *) 
  (* XILINX_LEGACY_PRIM = "PLLE2_BASE" *) 
  (* box_type = "PRIMITIVE" *) 
  PLLE2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT(18),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN1_PERIOD(20.000000),
    .CLKIN2_PERIOD(10.000000),
    .CLKOUT0_DIVIDE(15),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT1_DIVIDE(3),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .STARTUP_WAIT("FALSE")) 
    PLL_BASE_inst1
       (.CLKFBIN(CLKFBIN),
        .CLKFBOUT(CLKFBIN),
        .CLKIN1(CLKIN1),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKOUT0(clk_bufg),
        .CLKOUT1(sclk_bufg),
        .CLKOUT2(NLW_PLL_BASE_inst1_CLKOUT2_UNCONNECTED),
        .CLKOUT3(NLW_PLL_BASE_inst1_CLKOUT3_UNCONNECTED),
        .CLKOUT4(NLW_PLL_BASE_inst1_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_PLL_BASE_inst1_CLKOUT5_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_PLL_BASE_inst1_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_PLL_BASE_inst1_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked1),
        .PWRDWN(1'b0),
        .RST(1'b0));
  ps7_stub PS7_stub_inst
       (.FCLKCLK(ps_fclk_bufg),
        .PS7_inst_0(PS7_stub_inst_n_3),
        .T(T),
        .i2c_scl_i(i2c_scl_i),
        .i2c_scl_o(i2c_scl_o),
        .i2c_sda_i(i2c_sda_i),
        .i2c_sda_o(i2c_sda_o));
  (* box_type = "PRIMITIVE" *) 
  PULLUP PULLUP_scl_inst
       (.O(I2C_SCL));
  (* box_type = "PRIMITIVE" *) 
  PULLUP PULLUP_sda_inst
       (.O(I2C_SDA));
  prng_send data_gen_inst
       (.Q({hi,gi,fi}),
        .ao0(ao0),
        .bo0(bo0),
        .clk(clk),
        .co0(co0),
        .compls6__0(compls6__0),
        .do0(do0),
        .eo0(eo0),
        .io0(io0),
        .k4(k4),
        .locked1(locked1),
        .lpdl4(lpdl4),
        .lpdl6_reg(enc_inst_n_2),
        .mode(mode),
        .pdl6(pdl6),
        .rst(rst),
        .s0(s0),
        .s_reg(enc_inst_n_3),
        .\sr_reg[28]_0 (data_gen_inst_n_5));
  enc_8b10b enc_inst
       (.CLK(clk),
        .Q({hi,gi,fi}),
        .ao0(ao0),
        .bo0(bo0),
        .co0(co0),
        .compls6__0(compls6__0),
        .do0(do0),
        .\enc_data_reg[9]_0 (enc10b_dat),
        .eo0(eo0),
        .io0(io0),
        .k4(k4),
        .k4_reg_0(enc_inst_n_2),
        .k4_reg_1(enc_inst_n_3),
        .lpdl4(lpdl4),
        .lpdl6_reg_0(data_gen_inst_n_5),
        .mode(mode),
        .pdl6(pdl6),
        .rst(rst),
        .s0(s0));
  serdes_10_1__parameterized0 serdes_inst_clk
       (.CLK(clk),
        .CLK_LANE_N(CLK_LANE_N),
        .CLK_LANE_P(CLK_LANE_P),
        .rst(rst),
        .sclk(sclk));
  serdes_10_1 serdes_inst_data0
       (.CLK(clk),
        .DATA_LANE_0_N(DATA_LANE_0_N),
        .DATA_LANE_0_P(DATA_LANE_0_P),
        .data_in(enc10b_dat),
        .rst(rst),
        .sclk(sclk));
  serdes_10_1_0 serdes_inst_data1
       (.CLK(clk),
        .DATA_LANE_1_N(DATA_LANE_1_N),
        .DATA_LANE_1_P(DATA_LANE_1_P),
        .data_in(enc10b_dat),
        .rst(rst),
        .sclk(sclk));
  serdes_10_1_1 serdes_inst_data2
       (.CLK(clk),
        .DATA_LANE_2_N(DATA_LANE_2_N),
        .DATA_LANE_2_P(DATA_LANE_2_P),
        .data_in(enc10b_dat),
        .rst(rst),
        .sclk(sclk));
  serdes_10_1_2 serdes_inst_data3
       (.CLK(clk),
        .DATA_LANE_3_N(DATA_LANE_3_N),
        .DATA_LANE_3_P(DATA_LANE_3_P),
        .master_serdes_inst_data0_0(enc10b_dat),
        .rst(rst),
        .sclk(sclk));
  serdes_10_1_3 serdes_inst_data4
       (.CLK(clk),
        .DATA_LANE_4_N(DATA_LANE_4_N),
        .DATA_LANE_4_P(DATA_LANE_4_P),
        .master_serdes_inst_data0_0(enc10b_dat),
        .rst(rst),
        .sclk(sclk));
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
