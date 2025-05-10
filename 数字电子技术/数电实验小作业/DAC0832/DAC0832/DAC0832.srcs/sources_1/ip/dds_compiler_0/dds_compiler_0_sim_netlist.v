// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon May 20 11:37:17 2024
// Host        : LAPTOP-CCNJK6NK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/my_homework/my_vivado_practice/DAC0832/DAC0832/DAC0832.srcs/sources_1/ip/dds_compiler_0/dds_compiler_0_sim_netlist.v
// Design      : dds_compiler_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds_compiler_0,dds_compiler_v6_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_17,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module dds_compiler_0
   (aclk,
    s_axis_config_tvalid,
    s_axis_config_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata,
    m_axis_phase_tvalid,
    m_axis_phase_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_CONFIG, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_config_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG TDATA" *) input [31:0]s_axis_config_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [15:0]m_axis_data_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_PHASE, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_phase_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TDATA" *) output [31:0]m_axis_phase_tdata;

  wire aclk;
  wire [15:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire [31:0]m_axis_phase_tdata;
  wire m_axis_phase_tvalid;
  wire [31:0]s_axis_config_tdata;
  wire s_axis_config_tvalid;
  wire NLW_U0_debug_axi_resync_in_UNCONNECTED;
  wire NLW_U0_debug_core_nd_UNCONNECTED;
  wire NLW_U0_debug_phase_nd_UNCONNECTED;
  wire NLW_U0_event_phase_in_invalid_UNCONNECTED;
  wire NLW_U0_event_pinc_invalid_UNCONNECTED;
  wire NLW_U0_event_poff_invalid_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_m_axis_data_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_U0_s_axis_config_tready_UNCONNECTED;
  wire NLW_U0_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_U0_debug_axi_chan_in_UNCONNECTED;
  wire [31:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [31:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [31:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "32" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "1" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "1" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "1" *) 
  (* C_HAS_S_PHASE = "0" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "16" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "32" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "2" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "8" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "1" *) 
  (* C_PHASE_INCREMENT_VALUE = "1101000110110111,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "32" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dds_compiler_0_dds_compiler_v6_0_17 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .debug_axi_chan_in(NLW_U0_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[31:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[31:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[31:0]),
        .debug_phase_nd(NLW_U0_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_U0_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_U0_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_U0_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_U0_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_U0_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_U0_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_U0_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(m_axis_phase_tdata),
        .m_axis_phase_tlast(NLW_U0_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_U0_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(m_axis_phase_tvalid),
        .s_axis_config_tdata(s_axis_config_tdata),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_U0_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(s_axis_config_tvalid),
        .s_axis_phase_tdata(1'b0),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_U0_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(1'b0));
endmodule

(* C_ACCUMULATOR_WIDTH = "32" *) (* C_AMPLITUDE = "0" *) (* C_CHANNELS = "1" *) 
(* C_CHAN_WIDTH = "1" *) (* C_DEBUG_INTERFACE = "0" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ARESETN = "0" *) (* C_HAS_M_DATA = "1" *) (* C_HAS_M_PHASE = "1" *) 
(* C_HAS_PHASEGEN = "1" *) (* C_HAS_PHASE_OUT = "1" *) (* C_HAS_SINCOS = "1" *) 
(* C_HAS_S_CONFIG = "1" *) (* C_HAS_S_PHASE = "0" *) (* C_HAS_TLAST = "0" *) 
(* C_HAS_TREADY = "0" *) (* C_LATENCY = "3" *) (* C_MEM_TYPE = "1" *) 
(* C_MODE_OF_OPERATION = "0" *) (* C_MODULUS = "9" *) (* C_M_DATA_HAS_TUSER = "0" *) 
(* C_M_DATA_TDATA_WIDTH = "16" *) (* C_M_DATA_TUSER_WIDTH = "1" *) (* C_M_PHASE_HAS_TUSER = "0" *) 
(* C_M_PHASE_TDATA_WIDTH = "32" *) (* C_M_PHASE_TUSER_WIDTH = "1" *) (* C_NEGATIVE_COSINE = "0" *) 
(* C_NEGATIVE_SINE = "0" *) (* C_NOISE_SHAPING = "0" *) (* C_OPTIMISE_GOAL = "0" *) 
(* C_OUTPUTS_REQUIRED = "2" *) (* C_OUTPUT_FORM = "0" *) (* C_OUTPUT_WIDTH = "8" *) 
(* C_PHASE_ANGLE_WIDTH = "8" *) (* C_PHASE_INCREMENT = "1" *) (* C_PHASE_INCREMENT_VALUE = "1101000110110111,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
(* C_PHASE_OFFSET = "0" *) (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) (* C_POR_MODE = "0" *) 
(* C_RESYNC = "0" *) (* C_S_CONFIG_SYNC_MODE = "0" *) (* C_S_CONFIG_TDATA_WIDTH = "32" *) 
(* C_S_PHASE_HAS_TUSER = "0" *) (* C_S_PHASE_TDATA_WIDTH = "1" *) (* C_S_PHASE_TUSER_WIDTH = "1" *) 
(* C_USE_DSP48 = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "dds_compiler_v6_0_17" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module dds_compiler_0_dds_compiler_v6_0_17
   (aclk,
    aclken,
    aresetn,
    s_axis_phase_tvalid,
    s_axis_phase_tready,
    s_axis_phase_tdata,
    s_axis_phase_tlast,
    s_axis_phase_tuser,
    s_axis_config_tvalid,
    s_axis_config_tready,
    s_axis_config_tdata,
    s_axis_config_tlast,
    m_axis_data_tvalid,
    m_axis_data_tready,
    m_axis_data_tdata,
    m_axis_data_tlast,
    m_axis_data_tuser,
    m_axis_phase_tvalid,
    m_axis_phase_tready,
    m_axis_phase_tdata,
    m_axis_phase_tlast,
    m_axis_phase_tuser,
    event_pinc_invalid,
    event_poff_invalid,
    event_phase_in_invalid,
    event_s_phase_tlast_missing,
    event_s_phase_tlast_unexpected,
    event_s_phase_chanid_incorrect,
    event_s_config_tlast_missing,
    event_s_config_tlast_unexpected,
    debug_axi_pinc_in,
    debug_axi_poff_in,
    debug_axi_resync_in,
    debug_axi_chan_in,
    debug_core_nd,
    debug_phase,
    debug_phase_nd);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_phase_tvalid;
  output s_axis_phase_tready;
  input [0:0]s_axis_phase_tdata;
  input s_axis_phase_tlast;
  input [0:0]s_axis_phase_tuser;
  input s_axis_config_tvalid;
  output s_axis_config_tready;
  input [31:0]s_axis_config_tdata;
  input s_axis_config_tlast;
  output m_axis_data_tvalid;
  input m_axis_data_tready;
  output [15:0]m_axis_data_tdata;
  output m_axis_data_tlast;
  output [0:0]m_axis_data_tuser;
  output m_axis_phase_tvalid;
  input m_axis_phase_tready;
  output [31:0]m_axis_phase_tdata;
  output m_axis_phase_tlast;
  output [0:0]m_axis_phase_tuser;
  output event_pinc_invalid;
  output event_poff_invalid;
  output event_phase_in_invalid;
  output event_s_phase_tlast_missing;
  output event_s_phase_tlast_unexpected;
  output event_s_phase_chanid_incorrect;
  output event_s_config_tlast_missing;
  output event_s_config_tlast_unexpected;
  output [31:0]debug_axi_pinc_in;
  output [31:0]debug_axi_poff_in;
  output debug_axi_resync_in;
  output [0:0]debug_axi_chan_in;
  output debug_core_nd;
  output [31:0]debug_phase;
  output debug_phase_nd;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire [15:0]m_axis_data_tdata;
  wire [31:0]m_axis_phase_tdata;
  wire m_axis_phase_tvalid;
  wire [31:0]s_axis_config_tdata;
  wire s_axis_config_tvalid;
  wire NLW_i_synth_debug_axi_resync_in_UNCONNECTED;
  wire NLW_i_synth_debug_core_nd_UNCONNECTED;
  wire NLW_i_synth_debug_phase_nd_UNCONNECTED;
  wire NLW_i_synth_event_phase_in_invalid_UNCONNECTED;
  wire NLW_i_synth_event_pinc_invalid_UNCONNECTED;
  wire NLW_i_synth_event_poff_invalid_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_m_axis_data_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_i_synth_s_axis_config_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_i_synth_debug_axi_chan_in_UNCONNECTED;
  wire [31:0]NLW_i_synth_debug_axi_pinc_in_UNCONNECTED;
  wire [31:0]NLW_i_synth_debug_axi_poff_in_UNCONNECTED;
  wire [31:0]NLW_i_synth_debug_phase_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tuser_UNCONNECTED;

  assign debug_axi_chan_in[0] = \<const0> ;
  assign debug_axi_pinc_in[31] = \<const0> ;
  assign debug_axi_pinc_in[30] = \<const0> ;
  assign debug_axi_pinc_in[29] = \<const0> ;
  assign debug_axi_pinc_in[28] = \<const0> ;
  assign debug_axi_pinc_in[27] = \<const0> ;
  assign debug_axi_pinc_in[26] = \<const0> ;
  assign debug_axi_pinc_in[25] = \<const0> ;
  assign debug_axi_pinc_in[24] = \<const0> ;
  assign debug_axi_pinc_in[23] = \<const0> ;
  assign debug_axi_pinc_in[22] = \<const0> ;
  assign debug_axi_pinc_in[21] = \<const0> ;
  assign debug_axi_pinc_in[20] = \<const0> ;
  assign debug_axi_pinc_in[19] = \<const0> ;
  assign debug_axi_pinc_in[18] = \<const0> ;
  assign debug_axi_pinc_in[17] = \<const0> ;
  assign debug_axi_pinc_in[16] = \<const0> ;
  assign debug_axi_pinc_in[15] = \<const0> ;
  assign debug_axi_pinc_in[14] = \<const0> ;
  assign debug_axi_pinc_in[13] = \<const0> ;
  assign debug_axi_pinc_in[12] = \<const0> ;
  assign debug_axi_pinc_in[11] = \<const0> ;
  assign debug_axi_pinc_in[10] = \<const0> ;
  assign debug_axi_pinc_in[9] = \<const0> ;
  assign debug_axi_pinc_in[8] = \<const0> ;
  assign debug_axi_pinc_in[7] = \<const0> ;
  assign debug_axi_pinc_in[6] = \<const0> ;
  assign debug_axi_pinc_in[5] = \<const0> ;
  assign debug_axi_pinc_in[4] = \<const0> ;
  assign debug_axi_pinc_in[3] = \<const0> ;
  assign debug_axi_pinc_in[2] = \<const0> ;
  assign debug_axi_pinc_in[1] = \<const0> ;
  assign debug_axi_pinc_in[0] = \<const0> ;
  assign debug_axi_poff_in[31] = \<const0> ;
  assign debug_axi_poff_in[30] = \<const0> ;
  assign debug_axi_poff_in[29] = \<const0> ;
  assign debug_axi_poff_in[28] = \<const0> ;
  assign debug_axi_poff_in[27] = \<const0> ;
  assign debug_axi_poff_in[26] = \<const0> ;
  assign debug_axi_poff_in[25] = \<const0> ;
  assign debug_axi_poff_in[24] = \<const0> ;
  assign debug_axi_poff_in[23] = \<const0> ;
  assign debug_axi_poff_in[22] = \<const0> ;
  assign debug_axi_poff_in[21] = \<const0> ;
  assign debug_axi_poff_in[20] = \<const0> ;
  assign debug_axi_poff_in[19] = \<const0> ;
  assign debug_axi_poff_in[18] = \<const0> ;
  assign debug_axi_poff_in[17] = \<const0> ;
  assign debug_axi_poff_in[16] = \<const0> ;
  assign debug_axi_poff_in[15] = \<const0> ;
  assign debug_axi_poff_in[14] = \<const0> ;
  assign debug_axi_poff_in[13] = \<const0> ;
  assign debug_axi_poff_in[12] = \<const0> ;
  assign debug_axi_poff_in[11] = \<const0> ;
  assign debug_axi_poff_in[10] = \<const0> ;
  assign debug_axi_poff_in[9] = \<const0> ;
  assign debug_axi_poff_in[8] = \<const0> ;
  assign debug_axi_poff_in[7] = \<const0> ;
  assign debug_axi_poff_in[6] = \<const0> ;
  assign debug_axi_poff_in[5] = \<const0> ;
  assign debug_axi_poff_in[4] = \<const0> ;
  assign debug_axi_poff_in[3] = \<const0> ;
  assign debug_axi_poff_in[2] = \<const0> ;
  assign debug_axi_poff_in[1] = \<const0> ;
  assign debug_axi_poff_in[0] = \<const0> ;
  assign debug_axi_resync_in = \<const0> ;
  assign debug_core_nd = \<const0> ;
  assign debug_phase[31] = \<const0> ;
  assign debug_phase[30] = \<const0> ;
  assign debug_phase[29] = \<const0> ;
  assign debug_phase[28] = \<const0> ;
  assign debug_phase[27] = \<const0> ;
  assign debug_phase[26] = \<const0> ;
  assign debug_phase[25] = \<const0> ;
  assign debug_phase[24] = \<const0> ;
  assign debug_phase[23] = \<const0> ;
  assign debug_phase[22] = \<const0> ;
  assign debug_phase[21] = \<const0> ;
  assign debug_phase[20] = \<const0> ;
  assign debug_phase[19] = \<const0> ;
  assign debug_phase[18] = \<const0> ;
  assign debug_phase[17] = \<const0> ;
  assign debug_phase[16] = \<const0> ;
  assign debug_phase[15] = \<const0> ;
  assign debug_phase[14] = \<const0> ;
  assign debug_phase[13] = \<const0> ;
  assign debug_phase[12] = \<const0> ;
  assign debug_phase[11] = \<const0> ;
  assign debug_phase[10] = \<const0> ;
  assign debug_phase[9] = \<const0> ;
  assign debug_phase[8] = \<const0> ;
  assign debug_phase[7] = \<const0> ;
  assign debug_phase[6] = \<const0> ;
  assign debug_phase[5] = \<const0> ;
  assign debug_phase[4] = \<const0> ;
  assign debug_phase[3] = \<const0> ;
  assign debug_phase[2] = \<const0> ;
  assign debug_phase[1] = \<const0> ;
  assign debug_phase[0] = \<const0> ;
  assign debug_phase_nd = \<const0> ;
  assign event_phase_in_invalid = \<const0> ;
  assign event_pinc_invalid = \<const0> ;
  assign event_poff_invalid = \<const0> ;
  assign event_s_config_tlast_missing = \<const0> ;
  assign event_s_config_tlast_unexpected = \<const0> ;
  assign event_s_phase_chanid_incorrect = \<const0> ;
  assign event_s_phase_tlast_missing = \<const0> ;
  assign event_s_phase_tlast_unexpected = \<const0> ;
  assign m_axis_data_tlast = \<const0> ;
  assign m_axis_data_tuser[0] = \<const0> ;
  assign m_axis_data_tvalid = m_axis_phase_tvalid;
  assign m_axis_phase_tlast = \<const0> ;
  assign m_axis_phase_tuser[0] = \<const0> ;
  assign s_axis_config_tready = \<const1> ;
  assign s_axis_phase_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* C_ACCUMULATOR_WIDTH = "32" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "1" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "1" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "1" *) 
  (* C_HAS_S_PHASE = "0" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "16" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "32" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "2" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "8" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "1" *) 
  (* C_PHASE_INCREMENT_VALUE = "1101000110110111,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "32" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dds_compiler_0_dds_compiler_v6_0_17_viv i_synth
       (.aclk(aclk),
        .aclken(1'b0),
        .aresetn(1'b0),
        .debug_axi_chan_in(NLW_i_synth_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_i_synth_debug_axi_pinc_in_UNCONNECTED[31:0]),
        .debug_axi_poff_in(NLW_i_synth_debug_axi_poff_in_UNCONNECTED[31:0]),
        .debug_axi_resync_in(NLW_i_synth_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_i_synth_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_i_synth_debug_phase_UNCONNECTED[31:0]),
        .debug_phase_nd(NLW_i_synth_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_i_synth_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_i_synth_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_i_synth_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_i_synth_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_i_synth_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_i_synth_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_phase_tvalid),
        .m_axis_phase_tdata(m_axis_phase_tdata),
        .m_axis_phase_tlast(NLW_i_synth_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_i_synth_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(s_axis_config_tdata),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_i_synth_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(s_axis_config_tvalid),
        .s_axis_phase_tdata(1'b0),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_i_synth_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
gl8oTb3yK39LjDQS0B4PYP+vte8cGiBpEmJ9JLxCkI04rBQJe5sCt4dvUGvg1Ga0GoPkN0BTvh6i
v1YMWuZiJg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
LV5tnIhV6fXU4gAQOLXCxdxya9doivJt+Y+5yV24zJ1I56Mu4gOTYyKzdDBlwz49as5fPNOvHvtM
FEjflUU6R2Yh76tXBr2An7Tc7qdcv/WUX57JWpXSPQfxdtsoJzfNEA5lf9cFyHWa+eE27NH4fCIB
fHvZTqNYCqZpO8hMEWo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CtefK+dE5tJYyIkOlXrI1GU3HbXkaFgSREpPJj1NZdNualyVqOHiPJK5xJ71xxO6zkXYtBYfzkxn
9Eqf7SpqFizTSC3YZVNAp0ix3wloJ2xu9/08YGAzwYtrD72s/REOd9GdOS5BW5KfXcLDWxJnWFK3
mjj+cPJfHeoGuNLu6gH6HD/lNP6geaOelYYVD/TVk4P/j6qWfCikFKKuomVo3jbRD7F7QdkJDCeh
d5Xc8VxEXSaKIjFRuMTWZtjAQjFH5UpSMVhxV/fXhvzSM6V5P4QZA+memX692B8GYsTFU76iMlss
d7ocDlaRWbY0BTXFb2HZNfGcl+sqYKs8PYn/UA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UTuJ2/FiXz7w8k47LqoJjpB8chaAWEBjYpgn4jj1PBd2l6Nj6avA0We0iYNi5AJkwcUofxaNsFtE
+sVWsmGPk/0vN5Q90wbwbfGu18ni9SqWiSNRSUzzfB9h0bol599BuMG2pbcdYlanUIn9oPi4ZKeJ
2M667aoQ2BTcU/o1U8nn5wuoiboeNIqzcJS0jj+j6J5UYz5aHgwMcFlCGUwSQuAp+2VIulW4T1IV
NW+4iXCF7wife+1/XS6RYcYu+n4km8U2A8z/nLIuNXSO1T2HaR6rR3YxTorPEFUQnfrre1FxRLzT
6pi4dXPFPyG1bXISdn2AleLyNN3VFQjTEgHwsA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FMUkchj5p9XvgJ9tR5grSuP9aw5xa30l1YgNWO9WvtYYjYtQnsPBns5ryDL+PXPqQYQ3i0NvbEVZ
mN4H44H269BdOgH+vRRI3SR79goz8NqADp1QSv06wD02bUASlMq9aM6Phdxmqoalzn7A7dWDa+nU
2QokmpYQQylaKE1ZbXrz6loBY1IeoaMxbsQcvxJcI2aG1HO9NfyR9d5i3K9UmO1t9jFA+8k+GsKj
kNnLxX6I0J9fN8wKc7D007S9DgoQs6+WuCL6CudeG25OH6Gy/uLkY2Udzdpodegx89FgRLo92dDh
+0eWKh3H5TN2vtQ9mtD1iH6zm1l1IqnYy2G06A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
IjA88m1asiYMyCqMLSP/pVhA6mm9v8t5bFtEAMOvlQO8WTy5Vpca8kFPPuhuf6voqy+zwcLXRU9a
5UwLvCxgOEOo68GA3l4AR9WaPmcxPTPUwChO8zkHIDrS0eoDFMY1OTr1Lv8pbJknphtPExopREwk
KuHbtq4Mg3zw+se7q5E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nZ0uDa4zhbQfoZoNpOAKrHOsOrOlSYjg5j1zWlifZ7mksZmmo1GUwbu4BrFKsE9nPAJUOa85AaS6
3sPqXGDLUL68TzDI06mN0/idhoIRBSJNinUfJpw4Ro9h/zNx1E//RfaHklSArW0rHrP6JnabQq/E
ywpKofyKtfWBjZrTJqD+xFD3BsXO9W35e9lAY/pTqzN6C7dC2o6xELYMw7a37e+7TEDqEPb1kk1i
VC/DX7v1veomIkT4wlTej+pa1pSQH6uN/huOhLuz4yEz/zZdnoDInKQyuWaZgdQV+2dfYBgbf+po
404pK0Ii/DBBTh6IKooZGzVmsyG/5MKNX6F9vw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lN4+yWxwg5mNMvaJqdsuCvsXLUYJX5r2HoWQswnKOXsRe2CP3rSy6KIDTS1Bik/zYFUsjdKDAQ4o
+Wr4oUzRGSOAz/lu5Zg2Dnz2BimIeV3RyGgyDUS209ra5lqeQomv39zZDFFsssyEeol+Z6XX3Y5b
j3PbNxWndEjE0lXauTFdJAV4WTjtfn49ov4wx+DHFT3qyGXU7O5OiCZ2RTlysRRQllDChDVEg8lF
dm85X7kgom31y4V47nSCA1kovU6yFlM4ytFiqBi3zD9vkRofKqfplTSnPBSVH6DjBM99gkaEh3Vu
17dvQx4VeAHhghZ7/gOypdhIZKIe1ISjsCNWog==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CWX0zUOUow+5VHa5v3uuGQKXrMWok7sxXE9M59hZrIJelwKYgglHEDv/JalOhG0PNLKA/cluU4Ih
RLFMs5zgzy1OJKMYdBeX9mFgtcyYwydaDuWB01iXhcszPVFMEVekRU7jKAL2fsr/vXmCZO7H/xvp
SMcHXtnMg34XlI0fLB6BMbehXJ09ffx/MjyyIousL0mTSs9+/IHxKa+ks14ZR45dN9oTCMI37WGk
LqZ/cDBsgl2PxqJtzhWwnKX0WJIDe3eGpLpM/0/WS2tsqbjKtzVUQgYrJe1qBsx57PA18aSqTssK
yZX6WzrOoA/xOwFaQFIuMaeuaM+ILbRirc1jdQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 61184)
`pragma protect data_block
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
8CexCPQ4wLC8VKh8OUEpDaYNrZ4qoxk=
`pragma protect end_protected
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
