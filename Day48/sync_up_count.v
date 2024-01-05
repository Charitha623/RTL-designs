`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2024 08:59:48 PM
// Design Name: 
// Module Name: sync_up_count
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


module sync_up_count(
    input rst,clk,
    output reg [3:0] count
    );
    initial count=0;
    always @(posedge clk)
    begin
    if(rst)
    count=0;
    else count=count+1;
    end
endmodule
   