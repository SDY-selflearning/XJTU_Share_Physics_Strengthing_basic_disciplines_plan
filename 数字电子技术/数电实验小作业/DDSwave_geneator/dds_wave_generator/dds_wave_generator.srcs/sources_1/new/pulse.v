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
    input [11:0] data,
    input frequence_valid,
    output reg [13:0] frequence,
    output reg sam_pulse
    );
    parameter total = 100_000_000;
    parameter sam_freq = 256;
    //reg [13:0] frequence;
    reg [11:0] period;
    always@(posedge clk,negedge rst_n)
        if (!rst_n) begin
            frequence <= 14'd1000;
            period = total/(frequence*sam_freq);end
        else if (data== 12'heee && frequence_valid) begin
            frequence <= 14'd100;
            period = total/(frequence*sam_freq);end
        else if (data[11:8]==4'he && data[7:4]==4'he && frequence_valid) begin
            frequence <= data[3:0]*100;
            period = total/(frequence*sam_freq);end
        else if (data[11:8]==4'he && frequence_valid) begin
            frequence <= data[7:4]*1000+data[3:0]*100;
            period = total/(frequence*sam_freq);end
        else if (frequence_valid) begin
            frequence <= data[11:8]*10_000+ data[7:4]*1000+data[3:0]*100;
            period = total/(frequence*sam_freq);end
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
