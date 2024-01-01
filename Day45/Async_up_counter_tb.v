`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2024 06:40:20 PM
// Design Name: 
// Module Name: Async_up_counter_tb
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


module Async_up_counter_tb();
reg clk,rst;
wire [3:0] q;
Async_up_counter uut(clk,rst,q);
initial begin
forever #5 clk=~clk;
end
initial begin
rst=1;
#10 clk=1;rst=0;
#100 $finish;
end
endmodule
