`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/14 09:22:03
// Design Name: 
// Module Name: sim_sync_en
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


module sim_sync_en(
    );
    reg clk,rst,en;
    initial begin
        clk=1;
        rst=1;
        en=1;
        #20 rst=0;
    end
    always #5 clk=~clk;
    always begin
        #10 en=~en;
        #50 en=~en;
    end
    sync_enable uut(
        .clk(clk),
        .rst(rst),
        .en(en),
        .q()
    );
endmodule
