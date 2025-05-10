`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/28 11:03:05
// Design Name: 
// Module Name: sim_seqdet
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


module sim_seqdet(
    );
    reg clk,rst_n,data_in;
    wire data_out;
    initial begin
        clk=0;
        rst_n=0;
        data_in=0;
        #10 rst_n=1;
    end
    always #5 clk=~clk;
    always #10 data_in<={$random};
    seqdet_4sta uut(
        .clk(clk),
        .rst_n(rst_n),
        .data_in(data_in),
        .data_out(data_out)
    );
endmodule
