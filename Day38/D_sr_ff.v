`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2023 07:26:51 PM
// Design Name: 
// Module Name: D_sr_ff
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


module D_sr_ff(D,clk,rst,q,qbar);
input D,clk,rst;
output  q,qbar;
wire w1,w2,w3;

not a5(w3,D);

and a2(w2,w3,q);
and a4(w1,D,qbar);
sr_ff2 a3(w1,w2,clk,rst,q,qbar);
endmodule


module sr_ff2(s,r,clk,rst,q,qbar);
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
