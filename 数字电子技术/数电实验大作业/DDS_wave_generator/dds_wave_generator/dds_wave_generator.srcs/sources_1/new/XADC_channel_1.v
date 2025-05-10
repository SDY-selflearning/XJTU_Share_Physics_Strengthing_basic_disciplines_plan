`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/01 10:34:48
// Design Name: 
// Module Name: XADC_channel_1
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


module XADC_channel_1(
    input clk,
    input rst_n,
    input vauxp1,
    input vauxn1,
    output [15:0] do_out,
    output drdy_out
    //output reg [11:0] led
    );
    wire eoc_out;
    wire reset_in;
    assign reset_in = !rst_n;
    xadc_wiz_0 u1 (
      .di_in(16'b0),              // input wire [15 : 0] di_in
      .daddr_in(7'h11),        // input wire [6 : 0] daddr_in
      .den_in(eoc_out),            // input wire den_in
      .dwe_in(1'b0),            // input wire dwe_in
      .drdy_out(drdy_out),        // output wire drdy_out
      .do_out(do_out),            // output wire [15 : 0] do_out
      .dclk_in(clk),          // input wire dclk_in
      .reset_in(reset_in),        // input wire reset_in
      .vp_in(0),              // input wire vp_in
      .vn_in(0),              // input wire vn_in
      .vauxp1(vauxp1),            // input wire vauxp1
      .vauxn1(vauxn1),            // input wire vauxn1
      .channel_out(),  // output wire [4 : 0] channel_out
      .eoc_out(eoc_out),          // output wire eoc_out
      .alarm_out(),      // output wire alarm_out
      .eos_out(),          // output wire eos_out
      .busy_out()        // output wire busy_out
    );
endmodule
