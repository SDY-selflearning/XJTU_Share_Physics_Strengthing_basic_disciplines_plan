`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/02 16:18:39
// Design Name: 
// Module Name: convert
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


module convert(
    input clk,
    input rst_n,
    input frequence_valid,
    input amplitude_valid,
    input offset_valid,
    input duty_valid,
    input [31:0] bcd,
    output reg [31:0] data_show
    );
    /*parameter period = 100_000_000;
    reg [26:0]cnt;
    reg sec_level;
    always@(posedge clk,negedge rst_n)
        if (!rst_n)
            cnt <= 27'd0;
        else if (cnt == period)
            cnt <= 27'd0;
        else
            cnt <= cnt+1;
    always@(posedge clk,negedge rst_n)
        if (!rst_n)
            sec_level <= 1'd1;
        else if (!frequence_valid && !amplitude_valid && !offset_valid && !duty_valid)
            sec_level <= 1'd1;
        else if ((frequence_valid || amplitude_valid || offset_valid || duty_valid) && cnt <= period/2)
            sec_level <= 1'd1;
        else if ((frequence_valid || amplitude_valid || offset_valid || duty_valid))
            sec_level <= 1'd0;*/
    always@(posedge clk,negedge rst_n)
        if (!rst_n)
            data_show <= {20'heeeee,bcd[27:16]};
        else if (frequence_valid && bcd[27:16]==12'd0)
            data_show <= {4'he,4'he,4'h1,4'h0,4'h0,4'he,4'ha,4'h2};
        else if (amplitude_valid && bcd[27:16]==12'd0)
            data_show <= {4'hb,4'hb,4'he,4'he,4'he,4'h0,4'he,4'hc};
        else if (offset_valid && bcd[27:16]==12'd0)
            data_show <= {4'hb,4'hb,4'he,4'he,4'he,4'h0,4'he,4'hc};
        else if (duty_valid && bcd[27:16]==12'd0)
            data_show <= {4'he,4'he,4'he,4'h0,4'he,4'hb,4'hd,4'hf};
        else if (frequence_valid)
            data_show <= {bcd[27:16],4'h0,4'h0,4'he,4'ha,4'h2};
        else if (amplitude_valid)
            data_show <= {4'hb,4'hb,4'he,bcd[27:16],4'he,4'hc};
        else if (offset_valid)
            data_show <= {4'hb,4'hb,4'he,bcd[27:16],4'he,4'hc};
        else if (duty_valid)
            data_show <= {4'he,bcd[27:16],4'he,4'hb,4'hd,4'hf};
endmodule
