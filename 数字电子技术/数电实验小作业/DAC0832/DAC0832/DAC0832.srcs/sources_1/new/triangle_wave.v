`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/10 19:33:28
// Design Name: 
// Module Name: triangle_wave
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


module triangle_wave(
    input clk,
    input rst_n,
    input triangle,
    input sam_pulse,
    output reg [7:0] data
    );
    reg flag;
    reg [7:0]cnt;
    always@ (posedge clk , negedge rst_n)
        if (!rst_n)
        cnt <= 8'd0;
        else if (triangle && sam_pulse && cnt==255)
        cnt <= 8'd0;
        else if (triangle && sam_pulse)
        cnt <= cnt + 1;
    always@ (posedge clk , negedge rst_n)
        if (!rst_n)
        flag <= 0;
        else if (triangle && sam_pulse && cnt<127)
        flag <= 1'b0;
        else if (triangle && sam_pulse && cnt == 8'hff)
        flag <= 1'b0;
        else if (triangle && sam_pulse)
        flag <= 1'b1;
    always@ (posedge clk , negedge rst_n)
        if (!rst_n)
           data <= 8'd0;
        else if (triangle && sam_pulse && flag)
           data <= (8'd255 -  cnt) * 206 / 255;
        else if (triangle && sam_pulse && ~flag)
           data <= cnt * 206 /255;
        /*else if (triangle && sam_pulse && flag)
           data <= 8'd255 -  cnt;
        else if (triangle && sam_pulse && ~flag)
           data <=  cnt;*/
endmodule
