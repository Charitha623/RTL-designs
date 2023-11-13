`timescale 1ns / 1ps



module Halfsubtractor(Difference,Borrow,A,B);
output Difference,Borrow;
input A,B;
xor(Difference,A,B);
assign Borrow=(~A)&B;
endmodule
