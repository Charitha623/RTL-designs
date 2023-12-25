`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2023 08:28:44 PM
// Design Name: 
// Module Name: JK_D_ff
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


module JK_D_ff(j,k,clk,rst,q,qbar);
input j,k,clk,rst;
output q,qbar;
not a1(w1,k);
and a2(w2,qbar,j);
and a3(w3,q,w1);
or a4(w4,w3,w2);
D_ff a5(w4,clk,rst,q,qbar);
endmodule


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

