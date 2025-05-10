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
    input dclk_in,
    input reset_in,
    input [31:0] bcd,
    input [3:0] an1,
    input [3:0] an2,
    input [7:0] a_to_g1,
    input [7:0] a_to_g2
    );
    show show_high(
    .dclk_in(dclk_in),          
    .reset_in(reset_in),         
    .x(bcd[31:16]),                
    .a_to_g(a_to_g2),
    .an(an2)     
    );
    show show_low(
    .dclk_in(dclk_in),          
    .reset_in(reset_in),         
    .x(bcd[15:0]),                
    .a_to_g(a_to_g1),
    .an(an1)     
    );
endmodule
