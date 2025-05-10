`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/01 11:33:22
// Design Name: 
// Module Name: data_output
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


module data_output(
    input dclk_in,
    input reset_in,
    input drdy_out,
    input [15:0] do_out,
    output reg [11:0] led
    );
    /*always@(posedge dclk_in,posedge reset_in)
         if (reset_in)
             led<=12'd0;
         else if (drdy_out==1)
             led<=do_out[15:4];*/
       reg [20:0] cnt;
       always@(posedge dclk_in,posedge reset_in)
          if (reset_in)
              cnt<=21'd0;
          else if (cnt == 21'd5000_0)
              cnt <= 21'd0;
          else if (drdy_out==1)
              cnt<=cnt+1;
       always@(posedge dclk_in,posedge reset_in)
          if (reset_in)
              led<=12'd0;
          else if (cnt==21'd5000_0)
              led<=do_out[15:4];          
endmodule
