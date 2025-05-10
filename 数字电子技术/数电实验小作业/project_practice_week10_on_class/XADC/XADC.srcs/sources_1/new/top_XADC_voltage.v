`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/01 11:26:57
// Design Name: 
// Module Name: top_XADC_voltage
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


module top_XADC_voltage(
    input dclk_in,
    input reset_in,
    input vauxp1,
    input vauxn1,
    output [11:0] led,
    output [3:0] an1,an2,
    output [7:0] a_to_g1,a_to_g2
    );
    wire [15:0] do_out;
    wire drdy_out;
    wire [19:0] binary;
    wire [31:0] bcd;
    XADC_channel_1 top_xadc(
    .dclk_in(dclk_in),
    .reset_in(reset_in),
    .vauxp1(vauxp1),
    .vauxn1(vauxn1),
    .do_out(do_out),
    .drdy_out(drdy_out)
    );
    data_output top_data_output(
    .dclk_in(dclk_in),       
    .reset_in(reset_in),      
    .drdy_out(drdy_out),      
    .do_out(do_out), 
    .led(led)
    );
    bin2BCD top_bin2BCD(
    .binary({8'd0,led}),      //×î´óÏÔÊ¾1000000£¬
    .bcd(bcd) 
    );
    show_high_low top_show_high_low(
    .dclk_in(dclk_in), 
    .reset_in(reset_in),
    .bcd(bcd),  
    .an1(an1),   
    .an2(an2),   
    .a_to_g1(a_to_g1),
    .a_to_g2(a_to_g2)
    );
endmodule
