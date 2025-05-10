`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/09 20:13:53
// Design Name: 
// Module Name: wave
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


module sine_wave(
    input clk,
    input rst_n,
    input sine,
    input sam_pulse,
    output wire [7:0] data
    );
    //parameter sam_freq = 256;
    reg [7:0] addr;                            //rom 鏁版嵁鍦板潃
    always@ (posedge clk , negedge rst_n)
        if (!rst_n)
           addr <= 0;                                  //复位地址清零
        else if(sine && sam_pulse)
           addr <= addr + 1;                           //地址自增
    dist_mem_gen_0 u_sin_wave (
      .a(addr),        // input wire [7 : 0] a
      .clk(clk),    // input wire clk
      .qspo(data)  // output wire [7 : 0] qspo
    );
endmodule
