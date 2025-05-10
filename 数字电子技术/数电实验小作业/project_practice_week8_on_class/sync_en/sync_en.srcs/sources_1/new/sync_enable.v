`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2024/04/14 09:13:32
// Design Name:
// Module Name: sync_enable
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


module sync_enable(
    input clk,
    input rst,
    input en,
    output reg [3:0]q
    );
    always@(posedge clk,posedge rst)
    begin
        if (rst)
            q <= 0;
        else if (en)
            q <= q+1;
    end
endmodule
