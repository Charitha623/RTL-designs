`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/20/2023 08:16:44 PM
// Design Name: 
// Module Name: D_ff
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


module D_ff(D,clk,rst,q,qbar);
input clk,rst,D;
output reg q,qbar;
always@(posedge clk)
begin
if(rst)
{q,qbar}={1'b0,1'b0};
else
    {q,qbar}={D,~D};
    end
endmodule
