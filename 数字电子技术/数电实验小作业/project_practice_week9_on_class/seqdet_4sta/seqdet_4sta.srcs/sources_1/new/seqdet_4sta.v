`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2024/04/28 10:50:19
// Design Name:
// Module Name: seqdet_4sta
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


module seqdet_4sta(
    input clk,
    input rst_n,
    input data_in,
    output reg data_out
    );
    parameter S0 = 2'b00,
              S1 = 2'b01,
              S2 = 2'b10,
              S3 = 2'b11;
    reg [1:0] cstate = 0,nstate = 0;
    always@(posedge clk,negedge rst_n)
        if (!rst_n) cstate <= S0;
        else cstate <= nstate;
    always@(*)
        if (!rst_n)
            nstate = S0;
        else
            case(cstate)
                S0: if (data_in == 1)nstate = S1;
                else nstate     = cstate;
                S1: if (data_in == 1)nstate = S2;
                else nstate     = S0;
                S2: if (data_in == 1)nstate = S3;
                else nstate     = S0;
                S3: if (data_in == 0)nstate = S0;
                else nstate     = cstate;
                default: nstate = S0;
            endcase
    always@(posedge clk,negedge rst_n)
        if (!rst_n)
            data_out <= 0;
        else if (cstate == S3) data_out = 1;
        else data_out   = 0;
endmodule
