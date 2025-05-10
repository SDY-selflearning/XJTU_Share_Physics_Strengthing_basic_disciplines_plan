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
    input [11:0] data_XADC,
    input amplitude_valid,
    input offset_valid,
    output wire [7:0] data
    );
    reg flag;
    reg [7:0]cnt;
    
    reg [7:0] data_in;
    
    reg [13:0] amplitude;
    always@(posedge clk,negedge rst_n)
        if (!rst_n)
            amplitude <= 14'd50;
        else if (data_XADC[11:0]==12'heee && amplitude_valid)
            amplitude <= 14'd0;
        else if (data_XADC[11:8]==4'he && data_XADC[7:4]==4'he && amplitude_valid)
            amplitude <= data_XADC[3:0];
        else if (data_XADC[11:8]==4'he && amplitude_valid)
            amplitude <= data_XADC[7:4]*10+data_XADC[3:0];
        else if (amplitude_valid)
            amplitude <= data_XADC[11:8]*100+ data_XADC[7:4]*10+data_XADC[3:0];
    
    reg [13:0] offset;
    always@(posedge clk,negedge rst_n)
        if (!rst_n)
            offset <= 14'd0;
        else if (data_XADC[11:0]==12'heee && offset_valid)
            offset <= 14'd0;
        else if (data_XADC[11:8]==4'he && data_XADC[7:4]==4'he && offset_valid)
            offset <= data_XADC[3:0]*255*(100-amplitude)/10000;
        else if (data_XADC[11:8]==4'he && offset_valid)
            offset <= (data_XADC[7:4]*10+data_XADC[3:0])*255*(100-amplitude)/10000;
        else if (offset_valid)
            offset <= (data_XADC[11:8]*100+ data_XADC[7:4]*10+data_XADC[3:0])*255*(100-amplitude)/10000;
    
    assign data = data_in * amplitude/100 + offset;
    
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
           data_in <= 8'd0;
        /*else if (triangle && sam_pulse && flag)
           data <= (8'd255 -  cnt) * 206 / 255;
        else if (triangle && sam_pulse && ~flag)
           data <= cnt * 206 /255;*/
        else if (triangle && sam_pulse && flag)
           data_in <= 8'd255 -  2*cnt;
        else if (triangle && sam_pulse && ~flag)
           data_in <= 2*cnt;
endmodule
