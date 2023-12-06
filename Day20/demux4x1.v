`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2023 02:30:44 PM
// Design Name: 
// Module Name: demux4x1
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


module demux4x1(d,s0,s1,y0,y1,y2,y3);
input d,s0,s1;
output  y0,y1,y2,y3;
assign y0=d&(~s0)&(~s1);
assign y1=d&(~s0)&s1;
assign y2=d&s0&(~s1);
assign y3=d&s0&s1;
endmodule 


