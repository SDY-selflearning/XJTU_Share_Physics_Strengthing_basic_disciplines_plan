`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/27 21:16:29
// Design Name: 
// Module Name: sim_FSM
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


module sim_FSM(
    );
    reg clk,rst_n,key_load,key_start_stop;
    wire cnt_en,load;
    initial begin
        clk=0;
        rst_n=0;
        key_load=0;
        key_start_stop=0;
        #10 rst_n=1;
    end
    always #5 clk=~clk;
    always begin 
         #105 key_start_stop=1;
         #10 key_start_stop=0;
         #5 key_start_stop=0;
    end
  /*  always begin 
         #300 key_load=1;
         #10 key_load=0;
    end*/
    FSM uut(
        .clk(clk),
        .rst_n(rst_n),
        .key_load(key_load),
        .key_start_stop(key_start_stop),
        .cnt_en(cnt_en),
        .load(load)
    );
endmodule
