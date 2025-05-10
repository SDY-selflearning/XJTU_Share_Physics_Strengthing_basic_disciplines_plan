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
    //reg [3:0]data3,data2,data1;
    reg [11:0] data;
    wire sam_pulse;
    wire [13:0] frequence;
    initial begin
        clk=0;
        rst_n=0;
        #10 rst_n=1;
        /*data3[3:0] = 4'd1;
        data2[3:0] = 4'd0;
        data1[3:0] = 4'd0;
        #20 data3[11:8] = 4'd0; */
        data[11:8] = 4'd1;
        data[7:4] = 4'd0;
        data[3:0] = 4'd0;
        #20 data[11:8] = 4'd0;
        data[7:4] = 4'd9;
        data[3:0] = 4'd9;
    end
    always #5 clk=~clk;
    always begin  
    /*#20 data2[3:0] = data2[3:0] -1;
    #20 data1[3:0] = data1[3:0] -1;*/
    #30 data[7:4] = data[7:4] -1;
    #30 data[3:0] = data[3:0] -1;
    end
    pulse sim_m_pulse(
        .clk(clk),
        .rst_n(rst_n),
        .sam_pulse(sam_pulse),
        .data(data),
        .frequence(frequence)
    );
endmodule
