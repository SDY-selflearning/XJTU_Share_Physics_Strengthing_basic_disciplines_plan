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


module pulse(
    input clk,
    input rst_n,
    //input cnt_en,
    output reg sam_pulse
    );
    parameter total = 100_000_000;
    parameter frequence = 1000;
    parameter sam_freq = 256;
    parameter period = total/(frequence*sam_freq); 
    //parameter period = 2*total/sam_freq; 
    //parameter period = 10;
    reg [23:0]cnt;
    always@(posedge clk,negedge rst_n)
    begin
        if (!rst_n)
            cnt <= 23'd0;
        else if (cnt == period)
            cnt <= 23'd0;
        else
            cnt <= cnt+1;
    end
    always@(posedge clk,negedge rst_n)
    begin
        if (!rst_n)
            sam_pulse <= 1'd0;
        else if (cnt == period)
            sam_pulse <= 1'd1;
        else
            sam_pulse <= 1'd0;
    end


    /*always@(posedge clk,negedge rst_n)
        if (!rst_n)
            cnt <= 27'd0;
        else if (cnt_en&& (cnt == period))
            cnt <= 27'd0;
        else if(cnt_en)
            cnt <= cnt+1;
    always@(posedge clk,negedge rst_n)
        if (!rst_n)
            sec_pulse <= 1'd0;
        else if (cnt_en&&(cnt == period))
            sec_pulse <= 1'd1;
        else if(cnt_en)
            sec_pulse <= 1'd0;*/
endmodule
