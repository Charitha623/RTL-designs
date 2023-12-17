`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2023 06:56:51 PM
// Design Name: 
// Module Name: sr_latch_nand
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


module sr_latch_nand(s,r,q,q_bar);
input s,r;
output q,q_bar;
nand a1(q,s,q_bar);
nand a2(q_bar,r,q);
endmodule
