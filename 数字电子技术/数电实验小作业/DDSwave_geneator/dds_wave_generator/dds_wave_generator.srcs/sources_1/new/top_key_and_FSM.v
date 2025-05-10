`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/25 17:32:28
// Design Name: 
// Module Name: top_dds_wave_generator
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


module top_key_and_FSM(
    input clk,
    input rst_n,
    input key_wave,
    input key_frequence,
    input key_amplitude,
    input key_offset,
    input key_duty,
    output square,
    output sine,
    output triangle,
    output frequence,
    output offset,
    output amplitude,
    output duty
    );
    wire get_key_wave;
    wire get_key_frequence;
    wire get_key_amplitude;
    wire get_key_offset;
    wire get_key_duty;
    get_5key uut_get_5key(
    .clk(clk),
    .rst_n(rst_n),
    .key_wave(key_wave),
    .key_frequence(key_frequence),
    .key_amplitude(key_amplitude),
    .key_offset(key_offset),
    .key_duty(key_duty),
    .get_key_wave(get_key_wave),
    .get_key_frequence(get_key_frequence),
    .get_key_amplitude(get_key_amplitude),
    .get_key_offset(get_key_offset),
    .get_key_duty(get_key_duty)
    );
    FSM_5key uut_FSM_5key(
    .clk(clk),
    .rst_n(rst_n),
    .get_key_wave(get_key_wave),
    .get_key_frequence(get_key_frequence),
    .get_key_amplitude(get_key_amplitude),
    .get_key_offset(get_key_offset),
    .get_key_duty(get_key_duty),
    .square(square),
    .sine(sine),
    .triangle(triangle),
    .frequence(frequence),
    .offset(offset),
    .amplitude(amplitude),
    .duty(duty) 
    );
endmodule
