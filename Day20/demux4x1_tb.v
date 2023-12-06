`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2023 03:22:07 PM
// Design Name: 
// Module Name: demux4x1_tb
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


module demux4x1_tb();
reg d,s0,s1;
wire y0,y1,y2,y3;
demux4x1 uut(d,s0,s1,y0,y1,y2,y3);
initial begin 
d=1'b1;
#10 s0=0;s1=0;
#10 s0=0;s1=1;
#10 s0=1;s1=0;
#10 s0=1;s1=1;
end
endmodule
