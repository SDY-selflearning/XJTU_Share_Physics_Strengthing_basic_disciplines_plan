`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/08 10:36:47
// Design Name: 
// Module Name: vo_ag_mu_top
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


module vo_ag_mu_top(
    input a,
    input b,
    input c,
    input m,
    output y
    );
    wire y_vo,y_ag;
    volting3_ins voting(
        .a(a),
        .b(b),
        .c(c),
        .y(y_vo)
    );
    agree3_ins agree(
        .a(a),
        .b(b),
        .c(c),
        .y(y_ag)
    );
    mux2_1_ins mux(
        .a(y_vo),
        .b(y_ag),
        .s(m),
        .y(y)
    );
endmodule
