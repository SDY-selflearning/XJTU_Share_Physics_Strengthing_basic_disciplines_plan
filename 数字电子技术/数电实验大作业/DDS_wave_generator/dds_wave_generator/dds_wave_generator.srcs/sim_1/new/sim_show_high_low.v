`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/02 19:26:51
// Design Name: 
// Module Name: sim_show_high_low
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


module sim_show_high_low(
    );
    reg clk;                    //50M时钟
    reg rst_n;                    //复位
               //rom数据
    reg [31:0] bcd;
    
    reg frequence_valid;
    reg amplitude_valid;
    reg offset_valid;
    reg duty_valid;
    initial begin               //初始�?
    clk = 0;
    rst_n = 0;
    bcd = 32'h12345678;
    frequence_valid = 0;
    amplitude_valid = 0;
    offset_valid = 0;
    duty_valid = 0;
    #10 rst_n = 1; 
    end    
    always #5 clk = ~clk;      //�?10ps 反转�?�?.     因为我们上面定义的仿真精度就�?1ps 
    show_high_low sim_show_high_low(
    .clk,
    .rst_n,
    .bcd,
    
    .frequence_valid,
    .amplitude_valid,
    .offset_valid,
    .duty_valid,
    
    .an1,
    .an2,
    .a_to_g1,
    .a_to_g2
    );
    
endmodule
