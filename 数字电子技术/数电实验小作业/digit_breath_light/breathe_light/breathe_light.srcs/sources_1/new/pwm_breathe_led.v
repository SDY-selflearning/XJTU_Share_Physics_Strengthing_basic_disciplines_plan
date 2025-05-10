`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/22 10:35:02
// Design Name: 
// Module Name: pwm_breathe_led
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


module pwm_breathe_led(
    input clk,
    input rst_n,
    output reg led
    );
	/*parameter	CNT_1US_MAX	=7'd99;
	parameter	CNT_1MS_MAX	=10'd999;
	parameter	CNT_1S_MAX	=10'd999;*/
	parameter	CNT_1US_MAX	=7'd5;
	parameter	CNT_1MS_MAX	=10'd5;
	parameter	CNT_1S_MAX	=10'd5;
	reg	[9:0]	cnt_1s;
	reg	[9:0]	cnt_1ms;
	reg	[6:0]	cnt_1us;
	reg	cnt_en;
	
	always @ (posedge clk or negedge rst_n)
		if (!rst_n)
			cnt_1us	<=	6'd0;
		else	if (cnt_1us == CNT_1US_MAX)
			cnt_1us	<=	6'd0;
		else
			cnt_1us	<=	cnt_1us + 1'b1;
			
	always @ (posedge clk or negedge rst_n)
		if (!rst_n)
			cnt_1ms	<=	10'd0;
		else	if ( (cnt_1ms == CNT_1MS_MAX) && (cnt_1us == CNT_1US_MAX) )
			cnt_1ms	<=	10'd0;
		else	if (cnt_1us == CNT_1US_MAX)
			cnt_1ms	<=	cnt_1ms + 1'b1;
		else
			cnt_1ms	<=	cnt_1ms;

	always @ (posedge clk or negedge rst_n)
		if (!rst_n)
			cnt_1s	<=	10'd0;
		else	if ( (cnt_1s == CNT_1S_MAX) && (cnt_1ms == CNT_1MS_MAX) && (cnt_1us == CNT_1US_MAX) )
			cnt_1s	<=	10'd0;
		else	if ( (cnt_1ms == CNT_1MS_MAX) && (cnt_1us == CNT_1US_MAX) )
			cnt_1s	<=	cnt_1s + 1'b1;
		else
			cnt_1s	<=	cnt_1s;
	
	always @ (posedge clk or negedge rst_n)
		if (!rst_n)
			cnt_en	<=	1'b1;
		else	if ( (cnt_1s == CNT_1S_MAX) && (cnt_1ms == CNT_1MS_MAX) && (cnt_1us == CNT_1US_MAX) )
			cnt_en	<=	~cnt_en;
		else
			cnt_en	<=	cnt_en;
	
	always @ (posedge clk or negedge rst_n)
		if (!rst_n)
			led	<=	1'b0;
		else	if ( ((cnt_en == 1'b1) && (cnt_1ms <= cnt_1s))		
						|| ((cnt_en == 1'b0) &&  (cnt_1ms > cnt_1s)) )	
			led	<=	1'b1;
		else
			led	<=	1'b0;
endmodule
