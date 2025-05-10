`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/08 10:38:30
// Design Name: 
// Module Name: volting3_ins
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


module volting3_ins(
    input a,
    input b,
    input c,
    output y
    );
    assign y=(a&b)|(b&c)|(c&a);
endmodule
