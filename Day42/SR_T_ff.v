`timescale 1ns/1ps


module SR_T_ff(S,R,clk,rst,q,qbar);
input S,R,clk,rst;
output q,qbar;
and a1(w1,R,q);
and a2(w2,S,qbar);
or(w3,w1,w2);
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
