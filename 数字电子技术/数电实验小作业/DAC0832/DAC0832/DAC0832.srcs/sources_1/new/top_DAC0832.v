`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/10 21:15:06
// Design Name: 
// Module Name: top_DAC0832
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


module top_DAC0832(
    input clk,
    input rst_n,
    input key,
    input ILE,
    input CS_n,
    input WR1_n,
    input WR2_n,
    input XFER_n,
    output [7:0] data
    );
    assign ILE = 1'b1;
    assign CS_n = 1'b0;
    assign WR1_n = 1'b0;
    assign WR2_n = 1'b0;
    assign XFER_n = 1'b0;
    wire key_p_flag;
    wire square;
    wire sine;
    wire triangle;
    wire sam_pulse;
    key_debounce uut_key_debounce(
    .clk(clk),
    .rst_n(rst_n),
    .key(key),
    .key_p_flag(key_p_flag)
    );
    FSM uut_FSM(
    .clk(clk),
    .rst_n(rst_n),
    .key(key_p_flag),
    .square(square),
    .sine(sine),
    .triangle(triangle)
    );
    pulse uut_pulse(
    .clk(clk),
    .rst_n(rst_n),
    .sam_pulse(sam_pulse)
    );
    wave uut_wave(
    .clk(clk),
    .rst_n(rst_n),
    .square(square),
    .sine(sine),
    .triangle(triangle),
    .sam_pulse(sam_pulse),
    .data_out(data)
    );
endmodule
