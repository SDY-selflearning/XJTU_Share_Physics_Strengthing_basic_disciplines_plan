`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/02 15:59:37
// Design Name: 
// Module Name: show_4_digit
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


module show_4_digit(
    input clk,
    input rst_n,
    input [15:0] x,
    output reg [7:0] a_to_g,
    output reg [3:0] an
    );
    reg [20:0] clkdiv;
    wire [1:0] bitcnt;
    reg [3:0] digit;
    always@(posedge clk,negedge rst_n)
        if (!rst_n)
            clkdiv <= 21'd0;
        else
            clkdiv <= clkdiv+1;
    assign bitcnt = clkdiv[20:19];
      
    always@(*)
        if (!rst_n)
            an = 4'd0;
        else
            case(bitcnt)
                2'd0:an = 4'b0001;
                2'd1:an = 4'b0010;
                2'd2:an = 4'b0100;
                2'd3:an = 4'b1000;
                default:an = 4'd0;
            endcase
    always@(*)
        if (!rst_n)
            digit = 4'd0;
        else
            case(bitcnt)
                2'd0:digit = x[3:0];
                2'd1:digit = x[7:4];
                2'd2:digit = x[11:8];
                2'd3:digit = x[15:12];
                default:digit = 4'd0;
            endcase
    always@(*)
        if (!rst_n)
            a_to_g = 8'b11111111;
        else begin
            case(digit)
                0:a_to_g     =   8'b11111100;
                1:a_to_g     =   8'b01100000;
                2:a_to_g     =   8'b11011010;
                3:a_to_g     =   8'b11110010;
                4:a_to_g     =   8'b01100110;
                5:a_to_g     =   8'b10110110;
                6:a_to_g     =   8'b10111110;
                7:a_to_g     =   8'b11100000;
                8:a_to_g     =   8'b11111110;
                9:a_to_g     =   8'b11110110;
                'hA:a_to_g     =   8'b01101110;
                'hB:a_to_g     =   8'b11001110;
                'hC:a_to_g     =   8'b01111100;
                'hD:a_to_g     =   8'b10011110;
                'hE:a_to_g     =   8'b00000000;
                'hF:a_to_g     =   8'b11101110;
                default:a_to_g =   8'b11111100;
            endcase
        end
endmodule
