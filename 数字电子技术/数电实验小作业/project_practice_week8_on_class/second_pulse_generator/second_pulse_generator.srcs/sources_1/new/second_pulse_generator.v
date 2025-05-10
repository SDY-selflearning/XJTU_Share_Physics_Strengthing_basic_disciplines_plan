`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2024/04/13 19:57:04
// Design Name:
// Module Name: second_pulse_generator
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


module second_pulse_generator(input clk,
                              input rst_n,
                              output reg sec_pule);
    parameter period = 99_999_999;
    reg [26:0]cnt;
    always@(posedge clk,negedge rst_n)
    begin
        if (!rst_n)
            cnt <= 0;
        else if (cnt == period)
            cnt <= 0;
        else
            cnt <= cnt+1;
    end
    always@(posedge clk,negedge rst_n)
    begin
        if (!rst_n)
            sec_pule <= 0;
        else if (cnt == period)
            sec_pule <= ~sec_pule;
    end
endmodule
