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


module XADC_to_data(
    input clk,
    input rst_n,
    input vauxp1,
    input vauxn1,
    
    input frequence_valid,
    input amplitude_valid,
    input offset_valid,
    input duty_valid,
    
    output [11:0] data,
    output [3:0] an1,
    output [3:0] an2,
    output [7:0] a_to_g1,
    output [7:0] a_to_g2
    );
    wire [15:0] do_out;
    wire drdy_out;
    wire [19:0] binary;
    wire [31:0] bcd;
    wire [11:0] led;
    assign data[11:0] = bcd[27:16];
    //assign data[11:0] = led[11:0];
    XADC_channel_1 uut_XADC_channel_1(
    .clk(clk),
    .rst_n(rst_n),
    .vauxp1(vauxp1),
    .vauxn1(vauxn1),
    .do_out(do_out),
    .drdy_out(drdy_out)
    );
    data_output uut_data_output(
    .clk(clk),       
    .rst_n(rst_n),      
    .drdy_out(drdy_out),      
    .do_out(do_out), 
    .led(led)
    );
    bin2BCD uut_bin2BCD(
    .binary({8'd0,led}),      //ï¿½ï¿½ï¿½ï¿½ï¿½Ê?1000000ï¿½ï¿½
    .bcd(bcd) 
    );
    show_high_low uut_show_high_low(
    .clk(clk),
    .rst_n(rst_n),
    .bcd(bcd),
    
    .frequence_valid(frequence_valid),
    .amplitude_valid(amplitude_valid),
    .offset_valid(offset_valid),
    .duty_valid(duty_valid),
    
    .an1(an1),
    .an2(an2),
    .a_to_g1(a_to_g1),
    .a_to_g2(a_to_g2)
    );
    
endmodule
