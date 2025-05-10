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
   reg clk,rst_n,key,key_r;
    initial begin
        clk=1;
        rst_n=0;
        key=1;
        key_r=0;
       #10 rst_n=1;
    end
    always #5 clk=~clk;
    always #100 key=~key;
   BCD_cnt_digit utt(
    .clk(clk),
    .rst_n(rst_n),
    .a_to_g(),
    .an(),
    .key(key),
    .key_r(key_r)
    );
  /* reg a,b,sel;
    initial begin
    a=0;b=0;sel=0;
    end
    always #10 a=~a;
    always #20 b=~b;
    always #40 sel=~sel;*/
endmodule
