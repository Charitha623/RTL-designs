`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2024 07:26:50 PM
// Design Name: 
// Module Name: sync_down_count
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


module sync_down_count(
    input rst,clk,
    output reg [3:0] count
    );
    initial count=0;
    always @(posedge clk)
    begin
    if(rst)
    count=0;
    else count=count-1;
    end
endmodule