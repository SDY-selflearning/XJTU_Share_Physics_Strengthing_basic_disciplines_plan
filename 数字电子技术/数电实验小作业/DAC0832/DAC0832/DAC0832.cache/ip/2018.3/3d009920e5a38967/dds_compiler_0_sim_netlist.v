// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon May 20 11:37:16 2024
// Host        : LAPTOP-CCNJK6NK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dds_compiler_0_sim_netlist.v
// Design      : dds_compiler_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds_compiler_0,dds_compiler_v6_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_17,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_17 U0
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
(* C_USE_DSP48 = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_17
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_17_viv i_synth
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
olXrsP8TED7YzCEVd7mCeo3zj0aiu/A8/6wQZ4ACS5KBXsOb/Vc+oe1JcNumsf6R9KRYkhb+zNAQ
v9bezKTOGkazQ+JD+K+RsP9zkG/rzDd2PbGy0K9K1HhtsjBdUENT7jz7Gb7mLDvUkLXu/8nXxVj/
WwlRlJEsR2OS9QA4OBDcBKHRk8PwOtEkaqUzvKPgvzxBRiE0yzAa35ozas1QkCGmNDvrfhPfrIR+
1xOHGwQ6mxD0jvpDvmO36uzXXJ8GpAdxbSp0hgJdRlY8wWIDUTgXmjBe3y53V02tSoxOo93QxFoC
Zj1wYyWpryRKBE6NSpU5Deua8YHFtoZH53R/2Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RYGO7E9ejmC7kWx4EegkcM5Rrmcnp0Vu33RR2h3BvcR7Md8ffRbesiK0FSW7xhWkvQ6/+clTstsY
fHbltkCP1hHJKESvd69qGBcd4m/yCZqt3CPmKwCk34OO1I49riR8UZ4SEyhbtzFAke1BBdcrN0A4
iSw/4LSLUDubjAd05nhjh4dxb1TBP/m/lYgN7NAYgSO5iXoC4T5bNJU21Nhsrxjy1Q05ukAn9Tvu
hH/dmxMgEgcB3JZRPYa4ldPvO7+JPSCyaN1BMZhYl0oAsIK4zsX9QWSojHa7vkDiLK6lC66Qd89u
FTu9Vm5VrpwaO6rBfL2B3SXL7kFy56yoB2zw+g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 61456)
`pragma protect data_block
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
G/SzsPbZBAdmqQ==
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
