`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2023 09:20:34 PM
// Design Name: 
// Module Name: Mux8x1_4x1
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


module Mux8x1_4x1(a,b,c,d,e,f,g,h,sel,y);
input[3:0] a,b,c,d,e,f,g,h;
input[2:0] sel;
output[3:0] y;
wire[3:0] w1,w2;
Mux a1(a,b,c,d,sel[0],sel[1],w1);
Mux a2(e,f,g,h,sel[0],sel[1],w2);
Mux a3(w1,w2,4'b0000,4'b0000,1'b0,sel[2],y);

endmodule

module Mux(a,b,c,d,s0,s1,y);
input[3:0] a,b,c,d;
input s0,s1;
output reg[3:0] y;
always @(*)
begin
case({s0,s1})
2'b00: y=a;
2'b01: y=b;
2'b10: y=c;
2'b11: y=d;
default: y=0;
endcase
end
endmodule
