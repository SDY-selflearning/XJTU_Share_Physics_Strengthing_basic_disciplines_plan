`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/29 10:46:34
// Design Name: 
// Module Name: get_key
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


module get_key(
    input clk,
    input key_load,
    input key_start_stop,
    input rst_n,
    output wire get_key_load,
    output wire get_key_start_stop
    );
    key_debounce u_key_load(
        .clk(clk),
        .rst_n(rst_n),
        .key(key_load),
        .key_p_flag(get_key_load)
    );
    key_debounce u_key_start_stop(
        .clk(clk),
        .rst_n(rst_n),
        .key(key_start_stop),
        .key_p_flag(get_key_start_stop)
    );
endmodule
