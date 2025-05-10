`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2024/03/31 15:06:40
// Design Name:
// Module Name: sim_mux2_1
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


module sim_mux2_1();
    reg a,b,sel;
    wire out;
    initial
    begin
        a   = 1'b0;
        b   = 1'b1;
        sel = 1'b0;
        #100;
    end
    always #10 a    = ~a;
    always #20 b    = ~b;
    always #100 sel = ~sel;
    mux2_1 uut(
    .a(a),
    .b(b),
    .sel(sel),
    .out(out)
    );
endmodule
