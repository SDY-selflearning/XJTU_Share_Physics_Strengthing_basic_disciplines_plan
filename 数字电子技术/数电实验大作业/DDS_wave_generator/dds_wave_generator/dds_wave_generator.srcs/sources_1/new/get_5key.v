`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/29 10:46:34
// Design Name: 
// Module Name: get_key
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


module get_5key(
    input clk,
    input rst_n,
    input key_wave,
    input key_frequence,
    input key_amplitude,
    input key_offset,
    input key_duty,
    output wire get_key_wave,
    output wire get_key_frequence,
    output wire get_key_amplitude,
    output wire get_key_offset,
    output wire get_key_duty
    );
    key_debounce u_key_wave(
        .clk(clk),
        .rst_n(rst_n),
        .key(key_wave),
        .key_p_flag(get_key_wave)
    );
    key_debounce u_key_frequence(
        .clk(clk),
        .rst_n(rst_n),
        .key(key_frequence),
        .key_p_flag(get_key_frequence)
    );
    key_debounce u_key_amplitude(
        .clk(clk),
        .rst_n(rst_n),
        .key(key_amplitude),
        .key_p_flag(get_key_amplitude)
    );
    key_debounce u_key_offset(
        .clk(clk),
        .rst_n(rst_n),
        .key(key_offset),
        .key_p_flag(get_key_offset)
    );
    key_debounce u_key_duty(
        .clk(clk),
        .rst_n(rst_n),
        .key(key_duty),
        .key_p_flag(get_key_duty)
    );
endmodule
