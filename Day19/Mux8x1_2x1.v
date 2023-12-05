


module Mux8x1_2x1(a,b,c,d,e,f,g,h,sel,y);
input [3:0] a,b,c,d,e,f,g,h;
input [2:0] sel;
output [3:0] y;
wire [3:0] w1,w2,w3,w4,w5,w6;
 mux2_1 a1(a,b,sel[0],w1);
mux2_1 a2(c,d,sel[0],w2);
mux2_1 a3(e,f,sel[0],w3);
mux2_1 a4(g,h,sel[0],w4);
mux2_1 a5(w1,w2,sel[1],w5);
mux2_1 a6(w3,w4,sel[1],w6);
mux2_1 a7(w5,w6,sel[2],y);

endmodule

module mux2_1(a,b,s,y);
input[3:0] a,b;
output reg[3:0] y;
input s;
always @(*)
begin 
case(s)
1'b0: y=a;
1'b1: y=b;
default: y=4'b0000;
endcase
end
endmodule

