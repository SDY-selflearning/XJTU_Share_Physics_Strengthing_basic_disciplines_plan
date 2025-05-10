`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/10 15:54:07
// Design Name: 
// Module Name: square_wave
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


module square_wave(
    input clk,
    input rst_n,
    input square,
    input sam_pulse,
    output reg [7:0] data
    );
    reg flag;
    reg [7:0]cnt;
    always@ (posedge clk , negedge rst_n)
        if (!rst_n)
        cnt <= 8'd0;
        else if (square && sam_pulse && cnt==255)
        cnt <= 8'd0;
        else if (square && sam_pulse)
        cnt <= cnt + 1;
    always@ (posedge clk , negedge rst_n)
        if (!rst_n)
        flag <= 0;
        else if (square && sam_pulse && cnt<=127)
        flag <= 1'b0;
        else if (square && sam_pulse)
        flag <= 1'b1;
    always@ (posedge clk , negedge rst_n)
        if (!rst_n)
           data <= 8'd0;
        else if (square && sam_pulse && flag)
           data <= 8'd138;
        else if (square && sam_pulse && ~flag)
           data <= 8'd0;
endmodule
