`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/22/2023 08:48:35 PM
// Design Name: 
// Module Name: jk_sr_ff
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


module jk_sr_ff(j,k,clk,rst,q,qbar);
input j,k,clk,rst;
output  q,qbar;
wire w1,w2;



and a1(w1,j,qbar);
and a2(w2,k,q);
sr_ff a3(w1,w2,clk,rst,q,qbar);

endmodule



module sr_ff(s,r,clk,rst,q,qbar);
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
