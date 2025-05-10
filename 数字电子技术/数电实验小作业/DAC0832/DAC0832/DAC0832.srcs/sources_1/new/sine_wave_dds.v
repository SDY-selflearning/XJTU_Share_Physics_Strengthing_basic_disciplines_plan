`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/20 10:50:20
// Design Name: 
// Module Name: sine_wave_dds
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sine_wave_dds(
    input clk,
    input rst_n,
    input sine,
//    input sam_pulse,
    output wire [7:0] data
    );
    wire s_config_tvalid;
    wire [31:0] s_config_tdata;
    wire m_phase_tvalid;
    wire [31:0] m_phase_tdata;
    wire m_data_tvalid;
    wire [15:0] m_data_tdata;
    dds_compiler_0 your_instance_name (
       .aclk(clk),                                  // input wire aclk
       .s_axis_config_tvalid(s_config_tvalid),  // input wire s_axis_config_tvalid
       .s_axis_config_tdata(s_config_tdata),    // input wire [31 : 0] s_axis_config_tdata
       .m_axis_data_tvalid(m_data_tvalid),      // output wire m_axis_data_tvalid
       .m_axis_data_tdata(m_data_tdata),        // output wire [15 : 0] m_axis_data_tdata
       .m_axis_phase_tvalid(m_phase_tvalid),    // output wire m_axis_phase_tvalid
       .m_axis_phase_tdata(m_phase_tdata)      // output wire [31 : 0] m_axis_phase_tdata
    );
endmodule
