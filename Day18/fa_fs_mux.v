

module fa_fs_mux(a,b,cin,sum,carry,diff,borrow);
input a,b,cin;
output sum,carry,diff,borrow;
wire w1;
mux2x1 a1(1,0,cin,w1);
mux4x1 a2(cin,w1,w1,cin,a,b,sum);
mux4x1 a3(cin,w1,w1,cin,a,b,diff);
mux4x1 a4(0,cin,cin,1,a,b,carry);
mux4x1 a5(cin,1,0,cin,a,b,borrow);

endmodule


module mux2x1(a,b,sel,y);
input a,b,sel;
output y;
assign y=(~sel&a)|(sel&b);
endmodule


module mux4x1(i0,i1,i2,i3,s0,s1,y);
input i0,i1,i2,i3;
input s0,s1;
output reg y;
always @(*)
begin
case(s0&s1)
2'b00: y=i0;
2'b01: y=i1;
2'b10: y=i2;
2'b11: y=i3;
default:y=1'b0;
endcase
end
endmodule

