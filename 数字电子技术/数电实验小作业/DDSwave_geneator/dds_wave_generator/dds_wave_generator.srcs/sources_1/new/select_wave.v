`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/10 21:03:55
// Design Name: 
// Module Name: select_wave
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


module select_wave(
    input square,
    input sine,
    input triangle,
    input [23:0] data_in,
    output reg [7:0] data_out
    );
    always@(*)
         if (square==1 && sine==0 && triangle==0)
            data_out = data_in[23:16];
         else if (square==0 && sine==1 && triangle==0)
            data_out = data_in[15:8];
         else if (square==0 && sine==0 && triangle==1)
            data_out = data_in[7:0];
         else
            data_out = data_in[23:16];
endmodule
