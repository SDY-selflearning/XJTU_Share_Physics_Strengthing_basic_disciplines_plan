`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/14 11:29:40
// Design Name: 
// Module Name: sim_cnt60
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


module sim_cnt60(
    );
    reg clk,pulse_in,rst_n;
    initial begin
        clk=1;
        pulse_in=0;
        rst_n=0;
        #10 rst_n=1;
    end
    always #5 clk=~clk;
    always begin
        #10 pulse_in=1;
        #10 pulse_in=0;
    end
    cnt60 uut(
        .clk(clk),
        .pulse_in(pulse_in),
        .rst_n(rst_n),
        .x()
    );
endmodule
