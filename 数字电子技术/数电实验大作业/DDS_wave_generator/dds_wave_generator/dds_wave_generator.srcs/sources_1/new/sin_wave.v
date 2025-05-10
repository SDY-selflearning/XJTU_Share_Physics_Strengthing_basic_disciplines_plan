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
    input [11:0] data_XADC,
    input amplitude_valid,
    input offset_valid,
    output wire [7:0] data
    );
    //parameter sam_freq = 256;
    wire [7:0] data_in;
    reg [7:0] addr;                            //rom 鏁版嵁鍦板潃
    
    reg [13:0] amplitude;
    always@(posedge clk,negedge rst_n)
        if (!rst_n)
            amplitude <= 14'd50;
        else if (data_XADC[11:0]==12'heee && amplitude_valid)
            amplitude <= 14'd0;
        else if (data_XADC[11:8]==4'he && data_XADC[7:4]==4'he && amplitude_valid)
            amplitude <= data_XADC[3:0];
        else if (data_XADC[11:8]==4'he && amplitude_valid)
            amplitude <= data_XADC[7:4]*10+data_XADC[3:0];
        else if (amplitude_valid)
            amplitude <= data_XADC[11:8]*100+ data_XADC[7:4]*10+data_XADC[3:0];
            
    reg [13:0] offset;
    always@(posedge clk,negedge rst_n)
        if (!rst_n)
            offset <= 14'd0;
        else if (data_XADC[11:0]==12'heee && offset_valid)
            offset <= 14'd0;
        else if (data_XADC[11:8]==4'he && data_XADC[7:4]==4'he && offset_valid)
            offset <= data_XADC[3:0]*255*(100-amplitude)/10000;
        else if (data_XADC[11:8]==4'he && offset_valid)
            offset <= (data_XADC[7:4]*10+data_XADC[3:0])*255*(100-amplitude)/10000;
        else if (offset_valid)
            offset <= (data_XADC[11:8]*100+ data_XADC[7:4]*10+data_XADC[3:0])*255*(100-amplitude)/10000;
    
    always@ (posedge clk , negedge rst_n)
        if (!rst_n)
           addr <= 0;                                  //复位地址清零
        else if(sine && sam_pulse)
           addr <= addr + 1;                           //地址自增
    dist_mem_gen_0 u_sin_wave (
      .a(addr),        // input wire [7 : 0] a
      .clk(clk),    // input wire clk
      .qspo(data_in)  // output wire [7 : 0] qspo
    );
    assign data = data_in*amplitude/100 + offset;
    
endmodule
