`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/23/2023 09:09:30 PM
// Design Name: 
// Module Name: T_sr_ff
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


module T_sr_ff(T,clk,rst,q,qbar);
input T,clk,rst;
output  q,qbar;
wire w1,w2;



and a1(w1,T,qbar);
and a2(w2,T,q);
sr_ff1 a3(w1,w2,clk,rst,q,qbar);
endmodule


module sr_ff1(s,r,clk,rst,q,qbar);
input s,r,clk,rst;
output reg q,qbar;
always@(posedge clk)
begin
if(rst)
    {q,qbar}={1'b1,1'b0};
else begin
case({s,r})
 
                2'b00:{q,qbar} <={q,qbar};
            2'b01:
                {q,qbar} <={1'b0,1'b1};
            2'b10:
                {q,qbar} <={1'b1,1'b0};
            2'b11:
               {q,qbar} <={1'bx,1'bx};
            default:
                {q,qbar} <= {q,qbar};
endcase
end
end


endmodule