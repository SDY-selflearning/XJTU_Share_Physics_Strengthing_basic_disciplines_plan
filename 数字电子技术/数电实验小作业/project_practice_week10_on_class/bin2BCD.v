`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/30 10:33:43
// Design Name: 
// Module Name: bin2BCD
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


module bin2BCD(
    input [19:0]binary,      //最大显示1000000，
    output [31:0]bcd     
    );
     wire[3:0]bcd_ge,bcd_shi,bcd_bai,bcd_qian,bcd_wan,bcd_shiwan,bcd_baiwan,bcd_qianwan;
//    reg[3:0]bcd_ge_o; 
//    reg[3:0]bcd_shi_o; 
//    reg[3:0]bcd_bai_o; 
//    reg[3:0]bcd_qian_o; 
//    reg[3:0]bcd_wan_o;  
//    reg[3:0]bcd_shiwan_o; 
//    reg[3:0]bcd_baiwan_o; 
//    reg [3:0]bcd_qianwan_o;  
           
assign    bcd_qianwan=binary/10000000;
assign    bcd_baiwan=(binary%10000000)/1000000;
assign    bcd_shiwan=(binary%1000000)/100000;
assign    bcd_wan=(binary%100000)/10000;
assign    bcd_qian=(binary%10000)/1000;
assign    bcd_bai=(binary%1000)/100;	
assign    bcd_shi=(binary%100)/10;
assign    bcd_ge=binary%10;

//always@(*)   
//begin  
//    if(bcd_qianwan==0)
//        bcd_qianwan_o=4'he;//为零则不显示，“e”在数码管模块译码为全灭
//    else  if(bcd_qianwan==0&bcd_baiwan==0)
//        bcd_baiwan_o=4'he;
//    else  if(bcd_qianwan==0&bcd_baiwan==0&bcd_shiwan==0)
//        bcd_shiwan_o=4'he;
//    else if(bcd_qianwan==0&bcd_baiwan==0&bcd_shiwan==0&bcd_wan==0)
//        bcd_wan_o=4'he;  
//    else if(bcd_qianwan==0&bcd_baiwan==0&bcd_shiwan==0&bcd_wan==0&bcd_qian==0)
//        bcd_qian_o=4'he;  
//    else if(bcd_qianwan==0&bcd_baiwan==0&bcd_shiwan==0&bcd_wan==0&bcd_qian==0&bcd_bai==0)
//        bcd_bai_o=4'he;
//    else if(bcd_qianwan==0&bcd_baiwan==0&bcd_shiwan==0&bcd_wan==0&bcd_qian==0&bcd_bai==0&bcd_shi==0)
//        bcd_shi_o=4'he;
//    else begin
//        bcd_qianwan_o=bcd_qianwan;
//        bcd_baiwan_o=bcd_baiwan;
//        bcd_shiwan_o=bcd_shiwan;                
//        bcd_wan_o=bcd_wan;
//        bcd_qian_o=bcd_qian;
//        bcd_bai_o=bcd_bai;
//        bcd_shi_o=bcd_shi;
//        bcd_ge_o=bcd_ge;
//    end     
//end

assign bcd={4'he,bcd_baiwan,bcd_shiwan,bcd_wan,bcd_qian,bcd_bai,bcd_shi,bcd_ge};

endmodule
