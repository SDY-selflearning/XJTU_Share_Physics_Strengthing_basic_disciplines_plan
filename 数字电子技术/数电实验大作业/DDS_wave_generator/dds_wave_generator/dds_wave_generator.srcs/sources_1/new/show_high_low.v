`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/01 16:29:00
// Design Name: 
// Module Name: show_high_low
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


module show_high_low(
    input clk,
    input rst_n,
    input [31:0] bcd,
    
    input frequence_valid,
    input amplitude_valid,
    input offset_valid,
    input duty_valid,
    
    output [3:0] an1,
    output [3:0] an2,
    output [7:0] a_to_g1,
    output [7:0] a_to_g2
    );
    wire [31:0] data_show;
    convert uut_convert(
    .clk(clk),
    .rst_n(rst_n),
    .frequence_valid(frequence_valid),
    .amplitude_valid(amplitude_valid),
    .offset_valid(offset_valid),
    .duty_valid(duty_valid),
    /*.frequence_valid(0),
    .amplitude_valid(0),
    .offset_valid(0),
    .duty_valid(0),*/
    .bcd(bcd),
    .data_show(data_show)
    );
    
    show_4_digit show_high(
    .clk(clk),          
    .rst_n(rst_n),         
    .x(data_show[31:16]),      
    //.x(16'h5678),          
    .a_to_g(a_to_g1),
    .an(an1)     
    );
    show_4_digit show_low(
    .clk(clk),          
    .rst_n(rst_n),         
    .x(data_show[15:0]),
    //.x(16'h1234),                
    .a_to_g(a_to_g2),
    .an(an2)     
    );
endmodule
