`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/10 20:44:50
// Design Name: 
// Module Name: wave
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


module wave(
    input clk,
    input rst_n,
    input square,
    input sine,
    input triangle,
    input sam_pulse,
    output [7:0] data_out
    );
    wire [23:0] data_in;
    square_wave uut_square_wave(
    .clk(clk),
    .rst_n(rst_n),
    .square(square),
    .sam_pulse(sam_pulse),
    .data(data_in[23:16])
    );
    sine_wave uut_sine_wave(
    .clk(clk),
    .rst_n(rst_n),
    .sam_pulse(sam_pulse),
    .sine(sine),
    .data(data_in[15:8])
    );
    triangle_wave uut_triangle_wave(
    .clk(clk),
    .rst_n(rst_n),
    .sam_pulse(sam_pulse),
    .triangle(triangle),
    .data(data_in[7:0])
    );
    select_wave uut_select_wave(
    .square(square),
    .sine(sine),
    .triangle(triangle),
    .data_in(data_in),
    .data_out(data_out)
    );    
endmodule
