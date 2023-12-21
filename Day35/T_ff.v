`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/21/2023 08:45:21 PM
// Design Name: 
// Module Name: T_ff
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


module T_ff(T,clk,rst,q,qbar);
input T,clk,rst;
output reg q,qbar;
always@(posedge clk)
begin
q=0;qbar=1;
if(rst)
{q,qbar}={1'b0,1'b1};
else
    begin
    if(T==1)
    {q,qbar}={~q,q};
    else
    {q,qbar}={q,~q};
    end
    
end
endmodule
