`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2023 07:29:10 PM
// Design Name: 
// Module Name: comparator1bit
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


module comparator1bit(a,b,gt,eq,lt);
input a,b;
output  gt,eq,lt;
assign gt=a&~b;
assign eq=a^b;
assign lt=~a&b;


endmodule
