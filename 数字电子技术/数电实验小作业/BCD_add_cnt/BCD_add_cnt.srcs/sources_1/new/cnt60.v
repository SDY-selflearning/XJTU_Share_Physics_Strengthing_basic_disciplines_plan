`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2024/04/14 10:46:39
// Design Name:
// Module Name: cnt60
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


module cnt60(
    input clk,
    input rst_n,
    input pulse_in,
    input key_p_flag,
    input key_p_flag_r,
    output reg [7:0] x,
    output reg flag
    );
    /*always@(posedge clk,negedge rst_n)
        if (!rst_n)
            x[3:0] <= 4'd0;
        else if (pulse_in)
        begin
            if (x[3:0] == 4'd9)
                x[3:0] <= 4'd0;
            else
                x[3:0] <= x[3:0]+1;
        end
    always@(posedge clk,negedge rst_n)
        if (!rst_n)
            x[7:4] <= 4'd0;
        else if (pulse_in)
        begin
            if ((x[3:0] == 4'd9) & (x[7:4] == 4'd5))
                x[7:4] <= 4'd0;
            else if (x[3:0] == 4'd9)
                x[7:4] <= x[7:4]+1;
        end*/
        reg cnt_key;
      always@(posedge clk,negedge rst_n)
        if (!rst_n)
            cnt_key <= 0;
        else if (key_p_flag == 1)
            cnt_key <= cnt_key+1;
      always@(posedge clk,negedge rst_n)
        if (!rst_n)
            x[3:0] <= 4'd0;
        else if(key_p_flag_r&&(~cnt_key))
            x[3:0] <= 4'd0;
        else if ((x[3:0] == 4'd9)&&pulse_in)
                x[3:0] <= 4'd0;
        else if (pulse_in)
                x[3:0] <= x[3:0]+1;
      always@(posedge clk,negedge rst_n)
        if (!rst_n)
            x[7:4] <= 4'd0;
        else if (key_p_flag_r&&(~cnt_key))
            x[7:4] <= 4'd0;
        else if (((x[3:0] == 4'd9) & (x[7:4] == 4'd5))&pulse_in)
            x[7:4] <= 4'd0;
        else if ((x[3:0] == 4'd9) &pulse_in)
            x[7:4] <= x[7:4]+1;
    always@(posedge clk,negedge rst_n)
        if (!rst_n)
            flag<=1'b0;
       else if (pulse_in) begin
            if ((x[3:0] == 4'd9) & (x[7:4] == 4'd5))
                flag<=1'b1;
            else if((x[3:0] == 4'd0) & (x[7:4] == 4'd0)&(~pulse_in))
                flag<=1'b0;
            else
                flag<=1'b0;
        end
        /*else if (((pulse_in) & (x[3:0] == 4'd9)) & (x[7:4] == 4'd5))
                flag<=1'b1;
            else if(((~pulse_in) & (x[3:0] == 4'd0)) & (x[7:4] == 4'd0))
                flag<=1'b0;
            else
                flag<=1'b0;*/
 endmodule
