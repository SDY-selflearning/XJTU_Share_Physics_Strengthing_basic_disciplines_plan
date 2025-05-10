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
    input key,
    output reg square,
    output reg sine,
    output reg triangle
    );
    parameter SQU = 2'b00;
    parameter SIN = 2'b01;
    parameter TRI = 2'b11;
    reg [1:0] cstate    = 2'b00;
    reg [1:0] nstate    = 2'b00;
   always@(posedge clk,negedge rst_n)
        if (!rst_n) cstate <= SQU;
        else cstate <= nstate;
    always@(*)
        if (!rst_n)
            nstate = SQU;
        else
            case (cstate)
                SQU:
                if (key == 1) nstate = SIN;
                else nstate = SQU;
                SIN:
                if (key == 1) nstate = TRI;
                else nstate = SIN;
                TRI:
                if (key == 1) nstate = SQU;
                else nstate = TRI;
                default: nstate = SQU;
            endcase
    always@(posedge clk,negedge rst_n)
        if (!rst_n)
        begin
            square   <= 1'b1;
            sine     <= 1'b0;
            triangle <= 1'b0;
        end
        else
            case(nstate)
                SQU: begin square <= 1'b1;sine <= 1'b0;triangle <= 1'b0;end 
                SIN: begin square <= 1'b0;sine <= 1'b1;triangle <= 1'b0;end
                TRI: begin square <= 1'b0;sine <= 1'b0;triangle <= 1'b1;end
                default: begin square <= 1'b1;sine <= 1'b0;triangle <= 1'b0;end
            endcase
endmodule
