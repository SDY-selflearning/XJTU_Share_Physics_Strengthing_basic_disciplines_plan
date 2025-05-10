`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/10 20:07:06
// Design Name: 
// Module Name: sim_triangle
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


module sim_triangle(
    );
    reg clk;                    //50M时钟
    reg rst_n;                    //复位
    reg sam_pulse;
    reg triangle;
    wire [7:0] data;            //rom数据
    initial begin               //初始�?
    clk = 0;
    rst_n = 0;
    triangle = 1;
    sam_pulse = 0;
    #10 rst_n = 1; 
    end    
    always #5 clk = ~clk;      //�?10ps 反转�?�?.     因为我们上面定义的仿真精度就�?1ps 
    always begin
        #10 sam_pulse = 1;
        #10 sam_pulse = 0;
    end   
    triangle_wave uut_triangle_wave(               //例化底层文件
    .clk (clk),
    .rst_n (rst_n),
    .data (data),
    .sam_pulse(sam_pulse),
    .triangle(triangle),
    .data_XADC(14'd100),
    .amplitude_valid(1)
    );
endmodule
