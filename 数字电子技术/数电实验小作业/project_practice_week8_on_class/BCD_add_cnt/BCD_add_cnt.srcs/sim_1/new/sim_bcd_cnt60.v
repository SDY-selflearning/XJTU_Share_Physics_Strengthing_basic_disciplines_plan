`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/20 10:54:11
// Design Name: 
// Module Name: sim_bcd_cnt60
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


module sim_bcd_cnt60(
    );
   reg clk,rst_n;
    initial begin
        clk=1;
        rst_n=0;
       #10 rst_n=1;
    end
    always #5 clk=~clk;
   BCD_cnt_digit utt(
    .clk(clk),
    .rst_n(rst_n),
    .a_to_g(),
    .an(),
    .x()
    );
   /* reg a,b,sel;
    initial begin
    a=0;b=0;sel=0;
    end
    always #10 a=~a;
    always #20 b=~b;
    always #40 sel=~sel;*/
endmodule
