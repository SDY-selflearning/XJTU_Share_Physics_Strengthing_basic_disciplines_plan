`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/09 20:33:31
// Design Name: 
// Module Name: sim_pulse
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


module sim_pulse(
    );
    reg clk,rst_n;
    wire sam_pulse;
    initial begin
        clk=0;
        rst_n=0;
        #10 rst_n=1;
    end
    always #5 clk=~clk;
    pulse sim_m_pulse(
        .clk(clk),
        .rst_n(rst_n),
        .sam_pulse(sam_pulse)
    );
endmodule
