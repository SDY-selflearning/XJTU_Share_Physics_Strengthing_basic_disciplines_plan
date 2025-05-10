`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2024/04/21 09:39:56
// Design Name:
// Module Name: key_debounce
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


module key_debounce(
    input clk,
    input rst_n,
    input key,
    output reg key_p_flag
    );
    reg key_reg;
    reg key_value;
    reg [20:0]delay_cnt = 0;
    reg key_n_flag;
    parameter DELAY_YIME = 21'd15_00_000;
    always@(posedge clk,negedge rst_n)
        if (!rst_n)
            key_reg <= 1'b0;
        else
            key_reg <= key;
    always@(posedge clk,negedge rst_n)
        if (!rst_n)
            delay_cnt <= 21'd0;
        else if (key != key_reg)
            delay_cnt <= DELAY_YIME;
        else if (delay_cnt>0)
            delay_cnt <= delay_cnt-1'b1;
        else
            delay_cnt <= 21'd0;
    always@(posedge clk,negedge rst_n)
        if (!rst_n)
            key_value <= 1'b0;
        else if (delay_cnt == 1'b1)
            key_value <= key;
    always@(posedge clk,negedge rst_n)
        if (!rst_n)
            key_p_flag <= 1'b0;
        else if (delay_cnt == 1'b1&&key == 1)
            key_p_flag <= 1'b1;
        else
            key_p_flag <= 1'b0;
    always@(posedge clk,negedge rst_n)
        if (!rst_n)
            key_n_flag <= 1'b0;
        else if (delay_cnt == 1'b1 && key == 0)
            key_n_flag <= 1'b1;
        else
            key_n_flag <= 1'b0;
endmodule
