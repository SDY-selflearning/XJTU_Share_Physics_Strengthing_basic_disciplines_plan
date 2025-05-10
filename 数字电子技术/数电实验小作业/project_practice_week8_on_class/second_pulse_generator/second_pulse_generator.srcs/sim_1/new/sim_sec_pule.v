`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/13 20:21:27
// Design Name: 
// Module Name: sim_sec_pule
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


module sim_sec_pule(
    );
    reg clk,rst_n;
    initial begin
        clk=0;
        rst_n=0;
        #3 rst_n=1;
    end
    always #5 clk=~clk;
    second_pulse_generator uut(
        .clk(clk),
        .rst_n(rst_n),
        .sec_pule()
    );
endmodule
