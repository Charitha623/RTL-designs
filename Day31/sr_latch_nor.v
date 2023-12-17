`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2023 07:17:46 PM
// Design Name: 
// Module Name: sr_latch_nor
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


module sr_latch_nor(s,r,q,q_bar);
input s,r;
output q,q_bar;
nor a1(q,s,q_bar);
nor a2(q_bar,r,q);
endmodule
