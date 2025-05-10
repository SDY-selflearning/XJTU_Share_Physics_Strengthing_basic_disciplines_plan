`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2024/04/27 20:42:59
// Design Name:
// Module Name: FSM
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


module FSM(
    input clk,
    input rst_n,
    input key_load,
    input key_start_stop,
    output reg cnt_en,
    output reg load
    );
    parameter WORK_INIT = 2'b00;
    parameter COUNT     = 2'b01;
    parameter PAUSE     = 2'b11;
    reg [1:0] cstate    = 2'b00;
    reg [1:0] nstate    = 2'b00;
   always@(posedge clk,negedge rst_n)
        if (!rst_n) cstate <= WORK_INIT;
        else cstate <= nstate;
    always@(*)
        if (!rst_n)
            nstate = WORK_INIT;
        else
            case (cstate)
                WORK_INIT:
                if (key_start_stop == 1) nstate = COUNT;
                else nstate = WORK_INIT;
                COUNT:
                if (key_start_stop == 1) nstate = PAUSE;
                else nstate = COUNT;
                PAUSE:
                if (key_load == 1) nstate = WORK_INIT;
                else if (key_start_stop == 1) nstate = COUNT;
                else nstate = PAUSE;
                default: nstate = WORK_INIT;
            endcase
    always@(posedge clk,negedge rst_n)
        if (!rst_n)
        begin
            load   <= 1'b1;
            cnt_en <= 1'b0;
        end
        else
            case(nstate)
                WORK_INIT: begin cnt_en <= 1'b0;load <= 1'b1;end 
                PAUSE: begin cnt_en     <= 1'b0;load <= 1'b0;end
                COUNT: begin cnt_en     <= 1'b1;load <= 1'b0;end
                default: begin cnt_en   <= 1'b0;load <= 1'b1;end
            endcase
    endmodule
