`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/07 11:22:05
// Design Name: 
// Module Name: data_to_voltage
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


module data_to_voltage(
    input [15:0] data_h,
    output [31:0] data_d_v
    );
    
    //实际板卡测得Vcc，即上限电压为3.3422V（Fluke），此时分辨率为3342200/4095=816.166uV，
    //830*4095=3398850uV，即FFF时对应数据为3398850=22‘h33 DCC2?，共22位
    parameter VMAX=3351000;
    localparam M=VMAX/4095;//M为转换系数，即分辨率   
    parameter B_SIZE=24; //B_SIZE为二进制数所占的位数，可根据需要进行扩展。
    reg [B_SIZE-1:0] bin;//待转换16进制电压值
    reg [B_SIZE+3:0] bcd;
    reg [B_SIZE+3:0] result;//转换结果
    	// 将输入的二进制数转换成BCD码
	always @*
		begin
			bin=data_h*M;
			result=0;
			repeat ( B_SIZE-1 ) //使用repeat语句进行循环计算
				begin
					result[0] = bin[B_SIZE-1];
					if ( result[3 : 0] > 4 )
						result[3 : 0] = result[3 : 0] + 4'd3;
					if ( result[7 : 4] > 4 )
						result[7 : 4] = result[7 : 4] + 4'd3;
					if ( result[11 : 8] > 4 )
						result[11 : 8] = result[11 : 8] + 4'd3; //扩展时应参照此三条if语句续写
					if ( result[15 : 12] > 4 )
						result[15 : 12] = result[15 : 12] + 4'd3;	
					if ( result[19 : 16] > 4 )
						result[19 : 16] = result[19 : 16] + 4'd3;	
					if ( result[23 : 20] > 4 )
						result[23 : 20] = result[23 : 20] + 4'd3;	
					if ( result[27 : 24] > 4 )
						result[27 : 24] = result[27 : 24] + 4'd3;	
					result = result << 1;
					bin = bin << 1;
				end
				result[0] = bin[B_SIZE-1];
				bcd <= result;
		end	
		assign data_d_v={4'ha,12'heee,bcd[B_SIZE+3:12]};//e为灭，首位显示a
endmodule
