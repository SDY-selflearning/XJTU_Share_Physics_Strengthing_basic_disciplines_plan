`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/22 10:54:17
// Design Name: 
// Module Name: sim_breathe_led
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


module sim_breathe_led(
    );
    reg clk,rst_n;
    initial begin
        clk=0;
        rst_n=0;
        #10 rst_n=1;
    end
    always #5 clk=~clk;
    pwm_breathe_led uut(
        .clk(clk),
        .rst_n(rst_n),
        .led()
    );
endmodule
