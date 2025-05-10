`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/01 19:40:12
// Design Name: 
// Module Name: sim_bin2BCD
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


module sim_bin2BCD(
    );
    reg [19:0] binary;
    wire [31:0] bcd;
    initial begin
    binary=20'd4950;
    end
    always #10 binary=binary-1;
    bin2BCD sim_bin2BCD(
    .binary(binary),
    .bcd(bcd)
    );
endmodule
