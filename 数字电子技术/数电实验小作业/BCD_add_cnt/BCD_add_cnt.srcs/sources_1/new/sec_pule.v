`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2024/04/14 10:28:39
// Design Name:
// Module Name: sec_pule
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


module sec_pulse(
    input clk,
    input rst_n,
    input key_p_flag,
    output reg sec_pulse
    );
    parameter period = 100_000_000;
    //parameter period = 10;
    reg [26:0]cnt;
    reg cnt_key;
    /*always@(posedge clk,negedge rst_n)
    begin
        if (!rst_n)
            cnt <= 27'd0;
        else if (cnt == period)
            cnt <= 27'd0;
        else
            cnt <= cnt+1;
    end
    always@(posedge clk,negedge rst_n)
    begin
        if (!rst_n)
            sec_pulse <= 1'd0;
        else if (cnt == period)
            sec_pulse <= 1'd1;
        else
            sec_pulse <= 1'd0;
    end*/
    always@(posedge clk,negedge rst_n)
        if (!rst_n)
            cnt_key <= 0;
        else if (key_p_flag == 1)
            cnt_key <= cnt_key+1;
    always@(posedge clk,negedge rst_n)
        if (!rst_n)
            cnt <= 27'd0;
        else if (cnt_key&& (cnt == period))
            cnt <= 27'd0;
        else if(cnt_key)
            cnt <= cnt+1;
    always@(posedge clk,negedge rst_n)
        if (!rst_n)
            sec_pulse <= 1'd0;
        else if (cnt_key&&(cnt == period))
            sec_pulse <= 1'd1;
        else if(cnt_key)
            sec_pulse <= 1'd0;
endmodule
