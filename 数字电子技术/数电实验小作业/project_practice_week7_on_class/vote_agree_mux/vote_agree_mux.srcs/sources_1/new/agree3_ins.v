`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/08 10:41:05
// Design Name: 
// Module Name: agree3_ins
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


module agree3_ins(
    input a,
    input b,
    input c,
    output y
    );
    assign y=(a&b&c)|((~a)&(~b)&(~c));
endmodule
