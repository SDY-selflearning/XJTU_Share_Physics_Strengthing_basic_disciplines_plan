// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu May  9 22:09:18 2024
// Host        : LAPTOP-CCNJK6NK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    clk,
    qspo);
  input [7:0]a;
  input clk;
  output [7:0]qspo;

  wire [7:0]a;
  wire clk;
  wire [7:0]qspo;
  wire [7:0]NLW_U0_dpo_UNCONNECTED;
  wire [7:0]NLW_U0_qdpo_UNCONNECTED;
  wire [7:0]NLW_U0_spo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "8" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "256" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "1" *) 
  (* c_has_qspo = "1" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "0" *) 
  (* c_mem_init_file = "dist_mem_gen_0.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "1" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "8" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 U0
       (.a(a),
        .clk(clk),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[7:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[7:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(qspo),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(NLW_U0_spo_UNCONNECTED[7:0]),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "8" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "256" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "1" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "1" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "0" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "dist_mem_gen_0.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "1" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "8" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [7:0]a;
  input [7:0]d;
  input [7:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [7:0]spo;
  output [7:0]dpo;
  output [7:0]qspo;
  output [7:0]qdpo;

  wire \<const0> ;
  wire [7:0]a;
  wire clk;
  wire [7:0]qspo;

  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign spo[7] = \<const0> ;
  assign spo[6] = \<const0> ;
  assign spo[5] = \<const0> ;
  assign spo[4] = \<const0> ;
  assign spo[3] = \<const0> ;
  assign spo[2] = \<const0> ;
  assign spo[1] = \<const0> ;
  assign spo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12_synth \synth_options.dist_mem_inst 
       (.a(a),
        .clk(clk),
        .qspo(qspo));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12_synth
   (qspo,
    a,
    clk);
  output [7:0]qspo;
  input [7:0]a;
  input clk;

  wire [7:0]a;
  wire clk;
  wire [7:0]qspo;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom \gen_rom.rom_inst 
       (.a(a),
        .clk(clk),
        .qspo(qspo));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom
   (qspo,
    a,
    clk);
  output [7:0]qspo;
  input [7:0]a;
  input clk;

  wire [7:0]a;
  wire [7:0]a_reg;
  wire clk;
  wire [7:0]qspo;
  wire \qspo_int[0]_i_2_n_0 ;
  wire \qspo_int[0]_i_3_n_0 ;
  wire \qspo_int[1]_i_4_n_0 ;
  wire \qspo_int[1]_i_5_n_0 ;
  wire \qspo_int[1]_i_6_n_0 ;
  wire \qspo_int[1]_i_7_n_0 ;
  wire \qspo_int[2]_i_4_n_0 ;
  wire \qspo_int[2]_i_5_n_0 ;
  wire \qspo_int[2]_i_6_n_0 ;
  wire \qspo_int[2]_i_7_n_0 ;
  wire \qspo_int[3]_i_4_n_0 ;
  wire \qspo_int[3]_i_5_n_0 ;
  wire \qspo_int[3]_i_6_n_0 ;
  wire \qspo_int[3]_i_7_n_0 ;
  wire \qspo_int[4]_i_4_n_0 ;
  wire \qspo_int[4]_i_5_n_0 ;
  wire \qspo_int[4]_i_6_n_0 ;
  wire \qspo_int[4]_i_7_n_0 ;
  wire \qspo_int[5]_i_4_n_0 ;
  wire \qspo_int[5]_i_5_n_0 ;
  wire \qspo_int[5]_i_6_n_0 ;
  wire \qspo_int[5]_i_7_n_0 ;
  wire \qspo_int[6]_i_1_n_0 ;
  wire \qspo_int[6]_i_2_n_0 ;
  wire \qspo_int[6]_i_3_n_0 ;
  wire \qspo_int[7]_i_1_n_0 ;
  wire \qspo_int[7]_i_2_n_0 ;
  wire \qspo_int_reg[0]_i_1_n_0 ;
  wire \qspo_int_reg[1]_i_1_n_0 ;
  wire \qspo_int_reg[1]_i_2_n_0 ;
  wire \qspo_int_reg[1]_i_3_n_0 ;
  wire \qspo_int_reg[2]_i_1_n_0 ;
  wire \qspo_int_reg[2]_i_2_n_0 ;
  wire \qspo_int_reg[2]_i_3_n_0 ;
  wire \qspo_int_reg[3]_i_1_n_0 ;
  wire \qspo_int_reg[3]_i_2_n_0 ;
  wire \qspo_int_reg[3]_i_3_n_0 ;
  wire \qspo_int_reg[4]_i_1_n_0 ;
  wire \qspo_int_reg[4]_i_2_n_0 ;
  wire \qspo_int_reg[4]_i_3_n_0 ;
  wire \qspo_int_reg[5]_i_1_n_0 ;
  wire \qspo_int_reg[5]_i_2_n_0 ;
  wire \qspo_int_reg[5]_i_3_n_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(a[0]),
        .Q(a_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(a[1]),
        .Q(a_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(a[2]),
        .Q(a_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(a[3]),
        .Q(a_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(a[4]),
        .Q(a_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(a[5]),
        .Q(a_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(a[6]),
        .Q(a_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(a[7]),
        .Q(a_reg[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF5A293AFF0C5B881)) 
    \qspo_int[0]_i_2 
       (.I0(a_reg[6]),
        .I1(a_reg[4]),
        .I2(a_reg[3]),
        .I3(a_reg[0]),
        .I4(a_reg[1]),
        .I5(a_reg[2]),
        .O(\qspo_int[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h10AFCA41DF359F53)) 
    \qspo_int[0]_i_3 
       (.I0(a_reg[6]),
        .I1(a_reg[4]),
        .I2(a_reg[1]),
        .I3(a_reg[0]),
        .I4(a_reg[2]),
        .I5(a_reg[3]),
        .O(\qspo_int[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAA5308C5FF3C779)) 
    \qspo_int[1]_i_4 
       (.I0(a_reg[4]),
        .I1(a_reg[3]),
        .I2(a_reg[7]),
        .I3(a_reg[0]),
        .I4(a_reg[2]),
        .I5(a_reg[1]),
        .O(\qspo_int[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9C62AA42AE069F71)) 
    \qspo_int[1]_i_5 
       (.I0(a_reg[4]),
        .I1(a_reg[3]),
        .I2(a_reg[1]),
        .I3(a_reg[0]),
        .I4(a_reg[7]),
        .I5(a_reg[2]),
        .O(\qspo_int[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7619F5D5354820A8)) 
    \qspo_int[1]_i_6 
       (.I0(a_reg[4]),
        .I1(a_reg[7]),
        .I2(a_reg[1]),
        .I3(a_reg[2]),
        .I4(a_reg[3]),
        .I5(a_reg[0]),
        .O(\qspo_int[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3E13AF5AC0FC55A4)) 
    \qspo_int[1]_i_7 
       (.I0(a_reg[4]),
        .I1(a_reg[3]),
        .I2(a_reg[7]),
        .I3(a_reg[0]),
        .I4(a_reg[2]),
        .I5(a_reg[1]),
        .O(\qspo_int[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8DD778847B800779)) 
    \qspo_int[2]_i_4 
       (.I0(a_reg[4]),
        .I1(a_reg[3]),
        .I2(a_reg[1]),
        .I3(a_reg[7]),
        .I4(a_reg[0]),
        .I5(a_reg[2]),
        .O(\qspo_int[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1F5A82A078297F57)) 
    \qspo_int[2]_i_5 
       (.I0(a_reg[4]),
        .I1(a_reg[0]),
        .I2(a_reg[1]),
        .I3(a_reg[2]),
        .I4(a_reg[3]),
        .I5(a_reg[7]),
        .O(\qspo_int[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h074AB5B7585DA2E2)) 
    \qspo_int[2]_i_6 
       (.I0(a_reg[4]),
        .I1(a_reg[2]),
        .I2(a_reg[3]),
        .I3(a_reg[0]),
        .I4(a_reg[7]),
        .I5(a_reg[1]),
        .O(\qspo_int[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hD00EE112BEE11BB4)) 
    \qspo_int[2]_i_7 
       (.I0(a_reg[4]),
        .I1(a_reg[3]),
        .I2(a_reg[7]),
        .I3(a_reg[0]),
        .I4(a_reg[1]),
        .I5(a_reg[2]),
        .O(\qspo_int[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h344BB43C933CC3B5)) 
    \qspo_int[3]_i_4 
       (.I0(a_reg[4]),
        .I1(a_reg[3]),
        .I2(a_reg[7]),
        .I3(a_reg[2]),
        .I4(a_reg[0]),
        .I5(a_reg[1]),
        .O(\qspo_int[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4AA002AAAD57FF55)) 
    \qspo_int[3]_i_5 
       (.I0(a_reg[4]),
        .I1(a_reg[0]),
        .I2(a_reg[1]),
        .I3(a_reg[2]),
        .I4(a_reg[3]),
        .I5(a_reg[7]),
        .O(\qspo_int[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4555AAAE1202FDDD)) 
    \qspo_int[3]_i_6 
       (.I0(a_reg[4]),
        .I1(a_reg[3]),
        .I2(a_reg[1]),
        .I3(a_reg[0]),
        .I4(a_reg[7]),
        .I5(a_reg[2]),
        .O(\qspo_int[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hC3C32D3C9CD2C269)) 
    \qspo_int[3]_i_7 
       (.I0(a_reg[4]),
        .I1(a_reg[3]),
        .I2(a_reg[7]),
        .I3(a_reg[0]),
        .I4(a_reg[1]),
        .I5(a_reg[2]),
        .O(\qspo_int[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h69694A5AD2969697)) 
    \qspo_int[4]_i_4 
       (.I0(a_reg[4]),
        .I1(a_reg[3]),
        .I2(a_reg[7]),
        .I3(a_reg[0]),
        .I4(a_reg[1]),
        .I5(a_reg[2]),
        .O(\qspo_int[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5EAA0000A855FFFF)) 
    \qspo_int[4]_i_5 
       (.I0(a_reg[3]),
        .I1(a_reg[0]),
        .I2(a_reg[1]),
        .I3(a_reg[2]),
        .I4(a_reg[4]),
        .I5(a_reg[7]),
        .O(\qspo_int[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1111EEEA5444BBBB)) 
    \qspo_int[4]_i_6 
       (.I0(a_reg[4]),
        .I1(a_reg[3]),
        .I2(a_reg[1]),
        .I3(a_reg[0]),
        .I4(a_reg[7]),
        .I5(a_reg[2]),
        .O(\qspo_int[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9696B4A52569694B)) 
    \qspo_int[4]_i_7 
       (.I0(a_reg[4]),
        .I1(a_reg[3]),
        .I2(a_reg[7]),
        .I3(a_reg[0]),
        .I4(a_reg[1]),
        .I5(a_reg[2]),
        .O(\qspo_int[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBB999DDD44666223)) 
    \qspo_int[5]_i_4 
       (.I0(a_reg[4]),
        .I1(a_reg[3]),
        .I2(a_reg[0]),
        .I3(a_reg[1]),
        .I4(a_reg[2]),
        .I5(a_reg[7]),
        .O(\qspo_int[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC00000001FFFFFFF)) 
    \qspo_int[5]_i_5 
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[7]),
        .O(\qspo_int[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF0111EEEE)) 
    \qspo_int[5]_i_6 
       (.I0(a_reg[4]),
        .I1(a_reg[3]),
        .I2(a_reg[1]),
        .I3(a_reg[0]),
        .I4(a_reg[7]),
        .I5(a_reg[2]),
        .O(\qspo_int[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAABFDD55554022AA)) 
    \qspo_int[5]_i_7 
       (.I0(a_reg[4]),
        .I1(a_reg[1]),
        .I2(a_reg[0]),
        .I3(a_reg[2]),
        .I4(a_reg[3]),
        .I5(a_reg[7]),
        .O(\qspo_int[5]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8B3F8B0C)) 
    \qspo_int[6]_i_1 
       (.I0(\qspo_int[6]_i_2_n_0 ),
        .I1(a_reg[5]),
        .I2(a_reg[7]),
        .I3(a_reg[6]),
        .I4(\qspo_int[6]_i_3_n_0 ),
        .O(\qspo_int[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAAAAA00155555)) 
    \qspo_int[6]_i_2 
       (.I0(a_reg[4]),
        .I1(a_reg[1]),
        .I2(a_reg[0]),
        .I3(a_reg[2]),
        .I4(a_reg[3]),
        .I5(a_reg[7]),
        .O(\qspo_int[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55777777AA888889)) 
    \qspo_int[6]_i_3 
       (.I0(a_reg[4]),
        .I1(a_reg[3]),
        .I2(a_reg[0]),
        .I3(a_reg[1]),
        .I4(a_reg[2]),
        .I5(a_reg[7]),
        .O(\qspo_int[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3732)) 
    \qspo_int[7]_i_1 
       (.I0(a_reg[5]),
        .I1(a_reg[7]),
        .I2(a_reg[6]),
        .I3(\qspo_int[7]_i_2_n_0 ),
        .O(\qspo_int[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \qspo_int[7]_i_2 
       (.I0(a_reg[4]),
        .I1(a_reg[3]),
        .I2(a_reg[0]),
        .I3(a_reg[2]),
        .I4(a_reg[1]),
        .I5(a_reg[7]),
        .O(\qspo_int[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int_reg[0]_i_1_n_0 ),
        .Q(qspo[0]),
        .R(1'b0));
  MUXF7 \qspo_int_reg[0]_i_1 
       (.I0(\qspo_int[0]_i_2_n_0 ),
        .I1(\qspo_int[0]_i_3_n_0 ),
        .O(\qspo_int_reg[0]_i_1_n_0 ),
        .S(a_reg[5]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int_reg[1]_i_1_n_0 ),
        .Q(qspo[1]),
        .R(1'b0));
  MUXF8 \qspo_int_reg[1]_i_1 
       (.I0(\qspo_int_reg[1]_i_2_n_0 ),
        .I1(\qspo_int_reg[1]_i_3_n_0 ),
        .O(\qspo_int_reg[1]_i_1_n_0 ),
        .S(a_reg[5]));
  MUXF7 \qspo_int_reg[1]_i_2 
       (.I0(\qspo_int[1]_i_4_n_0 ),
        .I1(\qspo_int[1]_i_5_n_0 ),
        .O(\qspo_int_reg[1]_i_2_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[1]_i_3 
       (.I0(\qspo_int[1]_i_6_n_0 ),
        .I1(\qspo_int[1]_i_7_n_0 ),
        .O(\qspo_int_reg[1]_i_3_n_0 ),
        .S(a_reg[6]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int_reg[2]_i_1_n_0 ),
        .Q(qspo[2]),
        .R(1'b0));
  MUXF8 \qspo_int_reg[2]_i_1 
       (.I0(\qspo_int_reg[2]_i_2_n_0 ),
        .I1(\qspo_int_reg[2]_i_3_n_0 ),
        .O(\qspo_int_reg[2]_i_1_n_0 ),
        .S(a_reg[5]));
  MUXF7 \qspo_int_reg[2]_i_2 
       (.I0(\qspo_int[2]_i_4_n_0 ),
        .I1(\qspo_int[2]_i_5_n_0 ),
        .O(\qspo_int_reg[2]_i_2_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[2]_i_3 
       (.I0(\qspo_int[2]_i_6_n_0 ),
        .I1(\qspo_int[2]_i_7_n_0 ),
        .O(\qspo_int_reg[2]_i_3_n_0 ),
        .S(a_reg[6]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int_reg[3]_i_1_n_0 ),
        .Q(qspo[3]),
        .R(1'b0));
  MUXF8 \qspo_int_reg[3]_i_1 
       (.I0(\qspo_int_reg[3]_i_2_n_0 ),
        .I1(\qspo_int_reg[3]_i_3_n_0 ),
        .O(\qspo_int_reg[3]_i_1_n_0 ),
        .S(a_reg[5]));
  MUXF7 \qspo_int_reg[3]_i_2 
       (.I0(\qspo_int[3]_i_4_n_0 ),
        .I1(\qspo_int[3]_i_5_n_0 ),
        .O(\qspo_int_reg[3]_i_2_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[3]_i_3 
       (.I0(\qspo_int[3]_i_6_n_0 ),
        .I1(\qspo_int[3]_i_7_n_0 ),
        .O(\qspo_int_reg[3]_i_3_n_0 ),
        .S(a_reg[6]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int_reg[4]_i_1_n_0 ),
        .Q(qspo[4]),
        .R(1'b0));
  MUXF8 \qspo_int_reg[4]_i_1 
       (.I0(\qspo_int_reg[4]_i_2_n_0 ),
        .I1(\qspo_int_reg[4]_i_3_n_0 ),
        .O(\qspo_int_reg[4]_i_1_n_0 ),
        .S(a_reg[5]));
  MUXF7 \qspo_int_reg[4]_i_2 
       (.I0(\qspo_int[4]_i_4_n_0 ),
        .I1(\qspo_int[4]_i_5_n_0 ),
        .O(\qspo_int_reg[4]_i_2_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[4]_i_3 
       (.I0(\qspo_int[4]_i_6_n_0 ),
        .I1(\qspo_int[4]_i_7_n_0 ),
        .O(\qspo_int_reg[4]_i_3_n_0 ),
        .S(a_reg[6]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int_reg[5]_i_1_n_0 ),
        .Q(qspo[5]),
        .R(1'b0));
  MUXF8 \qspo_int_reg[5]_i_1 
       (.I0(\qspo_int_reg[5]_i_2_n_0 ),
        .I1(\qspo_int_reg[5]_i_3_n_0 ),
        .O(\qspo_int_reg[5]_i_1_n_0 ),
        .S(a_reg[5]));
  MUXF7 \qspo_int_reg[5]_i_2 
       (.I0(\qspo_int[5]_i_4_n_0 ),
        .I1(\qspo_int[5]_i_5_n_0 ),
        .O(\qspo_int_reg[5]_i_2_n_0 ),
        .S(a_reg[6]));
  MUXF7 \qspo_int_reg[5]_i_3 
       (.I0(\qspo_int[5]_i_6_n_0 ),
        .I1(\qspo_int[5]_i_7_n_0 ),
        .O(\qspo_int_reg[5]_i_3_n_0 ),
        .S(a_reg[6]));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int[6]_i_1_n_0 ),
        .Q(qspo[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\qspo_int[7]_i_1_n_0 ),
        .Q(qspo[7]),
        .R(1'b0));
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
