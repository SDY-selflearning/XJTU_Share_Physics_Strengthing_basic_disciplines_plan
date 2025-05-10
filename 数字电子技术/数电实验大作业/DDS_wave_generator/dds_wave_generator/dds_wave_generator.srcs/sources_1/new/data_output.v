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
    input clk,
    input rst_n,
    input drdy_out,
    input [15:0] do_out,
    output reg [11:0] led
    );
    /*always@(posedge clk,posedge rst_n)
         if (rst_n)
             led<=12'd0;
         else if (drdy_out==1)
             led<=do_out[15:4];*/
    reg [15:0] cnt;
    always@(posedge clk,posedge rst_n)
       if (!rst_n)
           cnt<=16'd0;
       else if (cnt == 16'd50_000)
           cnt <= 16'd0;
       else if (drdy_out==1)
           cnt<=cnt+1;
    always@(posedge clk,posedge rst_n)
       if (!rst_n)
           led<=12'd0;
       else if (cnt==16'd50_000)
           led<=do_out[15:4];          
endmodule
