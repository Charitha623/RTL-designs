`timescale 1ns / 1ps


module ha_hs_mux(a,b,sum,carry,diff,borrow);
input a,b;

output sum,carry,diff,borrow;

mux a1(b,~b,a,sum);
mux a2(0,b,a,carry);
mux a3(b,~b,a,diff);
mux a4(b,0,a,borrow);
endmodule

module mux(a,b,sel,y);
input a,b,sel;
output  reg y;
always @(*)
begin
if(sel==0)
    begin 
    y=a;
    end
else 
 begin
 y=b;
 end
 end
endmodule
