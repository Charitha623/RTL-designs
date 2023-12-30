`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2023 09:06:41 PM
// Design Name: 
// Module Name: jk_t_ff
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


module jk_t_ff(j,k,clk,rst,q,qbar);
input clk,j,k,rst;
output q,qbar;
and a1(w1,k,q);
and a2(w2,j,qbar);
or a3(w3,w1,w2);
T_ff1 a4(w3,clk,rst,q,qbar);
endmodule
module T_ff1(T,clk,rst,q,qbar);
input T,clk,rst;
output reg q,qbar;
always@(posedge clk)
begin

if(rst)
{q,qbar}={1'b0,1'b1};
else
    begin
    if(T==1)
    {q,qbar}={~q,q};
    end
    
end
endmodule
