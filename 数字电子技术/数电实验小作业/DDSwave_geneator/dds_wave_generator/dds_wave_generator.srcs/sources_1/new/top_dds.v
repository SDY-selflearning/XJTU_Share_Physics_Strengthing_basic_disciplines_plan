`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/26 10:02:12
// Design Name: 
// Module Name: top_dds
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


module top_dds(
    input clk,
    input rst_n,
    input vauxp1,
    input vauxn1,
    input ILE,
    input CS_n,
    input WR1_n,
    input WR2_n,
    input XFER_n,
    input key_wave,
    input key_frequence,
    input key_amplitude,
    input key_offset,
    input key_duty,
    
    output [3:0] an1,
    output [3:0] an2,
    output [7:0] a_to_g1,
    output [7:0] a_to_g2,
    
    output wire square,
    output wire sine,
    output wire triangle,
    output wire frequence_valid,
    output wire offset_valid,
    output wire amplitude_valid,
    output wire duty_valid,

    //output [13:0] frequence,,
    output [7:0] data_wave
    );
     wire [11:0] data;
    top_wave uut_top_wave(
    .clk(clk),
    .rst_n(rst_n),
    .vauxp1(vauxp1),
    .vauxn1(vauxn1),
    .ILE(ILE),
    .CS_n(CS_n),
    .WR1_n(WR1_n),
    .WR2_n(WR2_n),
    .XFER_n(XFER_n),
    .square(square),
    .sine(sine),
    .triangle(triangle),
    .frequence_valid(frequence_valid),
    .offset_valid(offset_valid),
    .amplitude_valid(amplitude_valid),
    .duty_valid(duty_valid),
    /*.square(1),
    .sine(0),
    .triangle(0),
    .frequence_valid(0),
    .offset_valid(0),
    .amplitude_valid(0),
    .duty_valid(0),*/
    .data(data),
    .an1(an1),
    .an2(an2),
    .a_to_g1(a_to_g1),
    .a_to_g2(a_to_g2),
    
    .data_wave(data_wave)
    );
    /*top_dds_wave_generator uut_top_dds_wave_generator(
    .clk(clk),
    .rst_n(rst_n),
    .key_wave(key_wave),
    .key_modify(key_modify),
    .square(square),
    .sine(sine),
    .triangle(triangle),
    .frequence(frequence_valid),
    .offset(offset_valid),
    .amplitude(amplitude_valid),
    .duty(duty_valid)
    );*/
    
    top_key_and_FSM uut_top_key_and_FSM(
    .clk(clk),
    .rst_n(rst_n),
    .key_wave(key_wave),
    .key_frequence(key_frequence),
    .key_amplitude(key_amplitude),
    .key_offset(key_offset),
    .key_duty(key_duty),
    .square(square),
    .sine(sine),
    .triangle(triangle),
    .frequence(frequence_valid),
    .offset(offset_valid),
    .amplitude(amplitude_valid),
    .duty(duty_valid)
    );
endmodule            