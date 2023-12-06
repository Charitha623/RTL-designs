`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2023 03:41:50 PM
// Design Name: 
// Module Name: demux8x1
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


module demux8x1(d,s0,s1,s2,y0,y1,y2,y3,y4,y5,y6,y7);
input d,s0,s1,s2;
output y0,y1,y2,y3,y4,y5,y6,y7;
assign y0=d&(~s0)&(~s1)&(~s2);
assign y1=d&(~s0)&s2&(~s1);
assign y2=d&(~s0)&(s1)&(~s2);
assign y3=d&s2&s1&(~s0);
assign y4=d&(s0)&(~s1)&(~s2);
assign y5=d&(s0)&(~s1)&s2;
assign y6=d&s0&(s1)&(~s2);
assign y7=d&s0&s1&s2;
endmodule
