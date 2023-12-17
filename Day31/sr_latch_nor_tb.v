`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2023 07:22:06 PM
// Design Name: 
// Module Name: sr_latch_nor_tb
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


module sr_latch_nor_tb();
 reg s,r;
wire q,q_bar;
sr_latch_nor uut(s,r,q,q_bar);
initial begin
s=0;r=0;
#40 s=0;r=1;
#40 s=1; r=0;
#40 s=1; r=1;

#40 s=0;r=0;
#40 s=0;r=1;
#40 s=1; r=0;
#40 s=1; r=1;
end
endmodule
