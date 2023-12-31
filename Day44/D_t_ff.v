`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2023 05:35:56 PM
// Design Name: 
// Module Name: D_t_ff
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


module D_t_ff(D,clk,rst,q,qbar);
input D,clk,rst;
output q,qbar;
and a1(w1,q,~D);
and a2(w2,qbar,D);
or a3(w3,w1,w2);
T_ff2 a4(w3,clk,rst,q,qbar);

endmodule
module T_ff2(T,clk,rst,q,qbar);
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
