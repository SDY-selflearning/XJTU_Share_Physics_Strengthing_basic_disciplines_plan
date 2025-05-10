`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/01 10:48:16
// Design Name: 
// Module Name: sim_and_or_not
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


module sim_and_or_not();
reg A,B,C,D;
wire Y;
initial begin
    A=1'b0;
    B=1'b0;
    C=1'b0;
    D=1'b0;
    #100;
end
always #10 A=~A;
always #20 B=~B;
always #40 C=~C;
always #80 D=~D;
and_or_not uut(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .Y(Y)
);

endmodule
