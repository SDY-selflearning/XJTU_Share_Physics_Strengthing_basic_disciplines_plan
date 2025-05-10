`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/29 11:15:01
// Design Name: 
// Module Name: cntdown
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


module cntdown(
    input clk,
    input cnt_en,
    input load,
    input rst_n,
    output [7:0]x
    );
    wire sec_pulse_in;
    sec_pulse u_sec_pulse(
        .clk(clk),
        .rst_n(rst_n),
        .cnt_en(cnt_en),
        .sec_pulse(sec_pulse_in)
    );
    cnt60 u_cnt60(
        .clk(clk),
        .rst_n(rst_n),
        .load(load),
        .pulse_in(sec_pulse_in),
        .x(x)
    );
endmodule
