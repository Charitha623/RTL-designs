`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/27/2023 09:43:22 PM
// Design Name: 
// Module Name: T_D_ff
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


module T_D_ff(T,clk,rst,q,qbar);
input T,clk,rst;
output q,qbar;
wire w1;
xor a1(w1,q,T);
D_ff1 a2(w1,clk,rst,q,qbar);
endmodule


module D_ff1(D,clk,rst,q,qbar);
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

