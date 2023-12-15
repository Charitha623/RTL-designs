`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2023 09:36:33 PM
// Design Name: 
// Module Name: cmp4bit
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


module cmp4bit(a,b,gt,eq,lt);
input [3:0] a,b;
output gt,eq,lt;
assign gt = (a > b);
assign lt = (a < b);
assign eq = (a == b);

endmodule
