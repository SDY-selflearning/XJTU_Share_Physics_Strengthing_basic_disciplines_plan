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


module FSM_5key(
    input clk,
    input rst_n,
    input get_key_wave,
    input get_key_frequence,
    input get_key_amplitude,
    input get_key_offset,
    input get_key_duty,
    output reg square,
    output reg sine,
    output reg triangle,
    output reg frequence,
    output reg offset,
    output reg amplitude,
    output reg duty
    );
    parameter SQUARE = 4'b0000;
    parameter SQUARE_FREQUENCE = 4'b0001;
    parameter SQUARE_AMPLITUDE = 4'b0010;
    parameter SQUARE_OFFSET = 4'b0011;
    parameter SQUARE_DUTY = 4'b0100;
    parameter SINE = 4'b0101;
    parameter SINE_FREQUENCE = 4'b0110;
    parameter SINE_AMPLITUDE = 4'b0111;
    parameter SINE_OFFSET = 4'b1000;
    parameter TRIANGLE = 4'b1001;
    parameter TRIANGLE_FREQUENCE = 4'b1010;
    parameter TRIANGLE_AMPLITUDE = 4'b1011;
    parameter TRIANGLE_OFFSET = 4'b1100;

    reg [3:0] cstate    = 4'b0000;
    reg [3:0] nstate    = 4'b0000;
    always@(posedge clk,negedge rst_n)
        if (!rst_n) cstate <= SQUARE;
        else cstate <= nstate;
    always@(*)
        if (!rst_n)
            nstate = SQUARE;
        else
            case (cstate)
                SQUARE:
                if (get_key_wave == 1) nstate = SINE;
                else if (get_key_frequence == 1) nstate = SQUARE_FREQUENCE;
                else if (get_key_amplitude == 1) nstate = SQUARE_AMPLITUDE;
                else if (get_key_offset == 1) nstate = SQUARE_OFFSET;
                else if (get_key_duty == 1) nstate = SQUARE_DUTY;
                else nstate = SQUARE;
                SQUARE_FREQUENCE:
                if (get_key_frequence == 1) nstate = SQUARE;
                else nstate = SQUARE_FREQUENCE;
                
                SQUARE_AMPLITUDE:
                if (get_key_amplitude == 1) nstate = SQUARE;
                else nstate = SQUARE_AMPLITUDE;
                SQUARE_OFFSET:
                if (get_key_offset == 1) nstate = SQUARE;
                else nstate = SQUARE_OFFSET;
                
                SQUARE_DUTY:
                if (get_key_duty == 1) nstate = SQUARE;
                else nstate = SQUARE_DUTY;

                SINE:
                if (get_key_wave == 1) nstate = TRIANGLE;
                else if (get_key_frequence == 1) nstate = SINE_FREQUENCE;
                else if (get_key_amplitude == 1) nstate = SINE_AMPLITUDE;
                else if (get_key_offset == 1) nstate = SINE_OFFSET;
                else nstate = SINE;
                SINE_FREQUENCE:
                if (get_key_frequence == 1) nstate = SINE;
                else nstate = SINE_FREQUENCE;
                
                SINE_AMPLITUDE:
                if (get_key_amplitude == 1) nstate = SINE;
                else nstate = SINE_AMPLITUDE;
                SINE_OFFSET:
                if (get_key_offset == 1) nstate = SINE;
                else nstate = SINE_OFFSET;               

                TRIANGLE:
                if (get_key_wave == 1) nstate = SQUARE;
                else if (get_key_frequence == 1) nstate = TRIANGLE_FREQUENCE;
                else if (get_key_amplitude == 1) nstate = TRIANGLE_AMPLITUDE;
                else if (get_key_offset == 1) nstate = TRIANGLE_OFFSET;
                else nstate = TRIANGLE;
                TRIANGLE_FREQUENCE:
                if (get_key_frequence == 1) nstate = TRIANGLE;
                else nstate = TRIANGLE_FREQUENCE;
                
                TRIANGLE_AMPLITUDE:
                if (get_key_amplitude == 1) nstate = TRIANGLE;
                else nstate = TRIANGLE_AMPLITUDE;
                TRIANGLE_OFFSET:
                if (get_key_offset == 1) nstate = TRIANGLE;
                else nstate = TRIANGLE_OFFSET;              
                
                default: nstate = SQUARE;
            endcase
    always@(posedge clk,negedge rst_n)
        if (!rst_n)
        begin
            square     <= 1'b1;
            sine       <= 1'b0;
            triangle   <= 1'b0;
            frequence  <= 1'b0;
            offset     <= 1'b0;
            amplitude  <= 1'b0;
            duty       <= 1'b0; 
        end
        else
            case(nstate)
                SQUARE:             begin square <= 1'b1;sine <= 1'b0;triangle <= 1'b0;frequence <= 1'b0;offset <= 1'b0;amplitude <= 1'b0; duty <= 1'b0; end
                SQUARE_FREQUENCE:   begin square <= 1'b1;sine <= 1'b0;triangle <= 1'b0;frequence <= 1'b1;offset <= 1'b0;amplitude <= 1'b0; duty <= 1'b0; end
                SQUARE_OFFSET:      begin square <= 1'b1;sine <= 1'b0;triangle <= 1'b0;frequence <= 1'b0;offset <= 1'b1;amplitude <= 1'b0; duty <= 1'b0; end
                SQUARE_AMPLITUDE:   begin square <= 1'b1;sine <= 1'b0;triangle <= 1'b0;frequence <= 1'b0;offset <= 1'b0;amplitude <= 1'b1; duty <= 1'b0; end
                SQUARE_DUTY:        begin square <= 1'b1;sine <= 1'b0;triangle <= 1'b0;frequence <= 1'b0;offset <= 1'b0;amplitude <= 1'b0; duty <= 1'b1; end
                SINE:               begin square <= 1'b0;sine <= 1'b1;triangle <= 1'b0;frequence <= 1'b0;offset <= 1'b0;amplitude <= 1'b0; duty <= 1'b0; end
                SINE_FREQUENCE:     begin square <= 1'b0;sine <= 1'b1;triangle <= 1'b0;frequence <= 1'b1;offset <= 1'b0;amplitude <= 1'b0; duty <= 1'b0; end
                SINE_OFFSET:        begin square <= 1'b0;sine <= 1'b1;triangle <= 1'b0;frequence <= 1'b0;offset <= 1'b1;amplitude <= 1'b0; duty <= 1'b0; end
                SINE_AMPLITUDE:     begin square <= 1'b0;sine <= 1'b1;triangle <= 1'b0;frequence <= 1'b0;offset <= 1'b0;amplitude <= 1'b1; duty <= 1'b0; end
                TRIANGLE:           begin square <= 1'b0;sine <= 1'b0;triangle <= 1'b1;frequence <= 1'b0;offset <= 1'b0;amplitude <= 1'b0; duty <= 1'b0; end
                TRIANGLE_FREQUENCE: begin square <= 1'b0;sine <= 1'b0;triangle <= 1'b1;frequence <= 1'b1;offset <= 1'b0;amplitude <= 1'b0; duty <= 1'b0; end
                TRIANGLE_OFFSET:    begin square <= 1'b0;sine <= 1'b0;triangle <= 1'b1;frequence <= 1'b0;offset <= 1'b1;amplitude <= 1'b0; duty <= 1'b0; end
                TRIANGLE_AMPLITUDE: begin square <= 1'b0;sine <= 1'b0;triangle <= 1'b1;frequence <= 1'b0;offset <= 1'b0;amplitude <= 1'b1; duty <= 1'b0; end
                default:            begin square <= 1'b1;sine <= 1'b0;triangle <= 1'b0;frequence <= 1'b0;offset <= 1'b0;amplitude <= 1'b0; duty <= 1'b0; end
            endcase
endmodule
