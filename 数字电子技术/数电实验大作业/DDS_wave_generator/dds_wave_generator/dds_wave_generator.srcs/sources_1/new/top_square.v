`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/25 21:46:50
// Design Name: 
// Module Name: top_square
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


module top_wave(
    input clk,
    input rst_n,
    input vauxp1,
    input vauxn1,
    input ILE,
    input CS_n,
    input WR1_n,
    input WR2_n,
    input XFER_n,
    input square,
    input sine,
    input triangle,
    input frequence_valid,
    input offset_valid,
    input amplitude_valid,
    input duty_valid,
    output [11:0] data,
    //output [13:0] frequence,
    output [3:0] an1,
    output [3:0] an2,
    output [7:0] a_to_g1,
    output [7:0] a_to_g2,
    output [7:0] data_wave
    );
    //wire [11:0] data;
    wire sam_pulse;
    wire [13:0] frequence;
    assign ILE = 1'b1;
    assign CS_n = 1'b0;
    assign WR1_n = 1'b0;
    assign WR2_n = 1'b0;
    assign XFER_n = 1'b0;
    XADC_to_data uut_XADC_to_data(
    .clk(clk),
    .rst_n(rst_n),
    .vauxp1(vauxp1),
    .vauxn1(vauxn1),
    .data(data),
    .an1(an1),
    .an2(an2),
    .a_to_g1(a_to_g1),
    .a_to_g2(a_to_g2),
    .frequence_valid(frequence_valid),
    .amplitude_valid(amplitude_valid),
    .offset_valid(offset_valid),
    .duty_valid(duty_valid)
    );
    pulse uut_pulse(
    .clk(clk),
    .rst_n(rst_n),
    .data(data),
    .sam_pulse(sam_pulse),
    .frequence(frequence),
    .frequence_valid(frequence_valid)
    );
    wave uut_wave(
    .clk(clk),
    .rst_n(rst_n),
    .square(square),
    .sine(sine),
    .triangle(triangle),
    .sam_pulse(sam_pulse),
    .data_out(data_wave),
    .offset_valid(offset_valid),
    .amplitude_valid(amplitude_valid),
    .duty_valid(duty_valid),
    .data_XADC(data)
    );
endmodule
