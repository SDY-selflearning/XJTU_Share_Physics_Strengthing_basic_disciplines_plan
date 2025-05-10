`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/29 11:29:16
// Design Name: 
// Module Name: top_sec_cnt
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


module top_sec_cnt(
    input clk,
    input key_load,
    input key_start_stop,
    input rst_n,
    output wire [7:0]a_to_g,
    output wire [3:0]an
    //output wire [7:0]x
    );
    wire get_key_load;
    wire get_key_start_stop;
    wire cnt_en;
    wire load;
    wire [7:0]x;
    get_key top_get_key(
        .clk(clk),
        .key_load(key_load),
        .key_start_stop(key_start_stop),
        .rst_n(rst_n),
        .get_key_load(get_key_load),
        .get_key_start_stop(get_key_start_stop)
    );
    FSM top_FSM(
        .clk(clk),
        .key_load(get_key_load),
        .key_start_stop(get_key_start_stop),
        .rst_n(rst_n),
        .cnt_en(cnt_en),
        .load(load)
    );
    cntdown top_cntdown(
        .clk(clk),
        .cnt_en(cnt_en),
        .load(load),
        .rst_n(rst_n),
        .x(x)
    );
    show top_show(
        .clk(clk),
        .rst_n(rst_n),
        .x(x),
        .a_to_g(a_to_g),
        .an(an)
    );
endmodule
