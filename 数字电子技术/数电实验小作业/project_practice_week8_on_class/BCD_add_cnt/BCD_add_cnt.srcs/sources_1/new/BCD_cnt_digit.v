`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/14 15:52:05
// Design Name: 
// Module Name: BCD_cnt_digit
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


module BCD_cnt_digit(
    input clk,
    input rst_n,
    input key,
    input key_r,
    output wire [7:0] a_to_g,
    output wire [3:0] an
    );
    wire [15:0] x;
    wire sec_pulse_in;
    wire flag_in;
    wire key_p_flag;
    wire key_p_flag_r;
    //assign flag_in = ((sec_pulse_in) & (x[3:0] == 4'd9)) & (x[7:4] == 4'd5);
    sec_pulse u1_sec_pulse(
        .clk(clk),
        .rst_n(rst_n),
        .sec_pulse(sec_pulse_in),
        .key_p_flag(key_p_flag)
    );
    cnt60 sec_cnt60(
        .clk(clk),
        .rst_n(rst_n),
        .pulse_in(sec_pulse_in),
        .x(x[7:0]),
        .key_p_flag_r(key_p_flag_r),
        .key_p_flag(key_p_flag),
        .flag(flag_in)
    );
    cnt60 min_cnt60(
        .clk(clk),
        .rst_n(rst_n),
        .pulse_in(flag_in),
        .x(x[15:8]),
        .key_p_flag_r(key_p_flag_r),
        .key_p_flag(key_p_flag),
        .flag()
    );
    show u3_show(
        .clk(clk),
        .rst_n(rst_n),
        .x(x),
        .an(an),
        .a_to_g(a_to_g)
    );
    key_debounce u4(
        .clk(clk),
        .rst_n(rst_n),
        .key(key),
        .key_p_flag(key_p_flag)
    );
    key_debounce u5(
        .clk(clk),
        .rst_n(rst_n),
        .key(key_r),
        .key_p_flag(key_p_flag_r)
    );
endmodule
