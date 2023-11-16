`timescale 1ns / 1ps


module Fs_Hs(Difference,Borrow,A,B,Cin);
output Difference,Borrow;
input A,B,Cin;
wire diff1,borrow1,borrow2;
halfsubtractor a1(diff1,borrow1,A,B);
halfsubtractor a2(Difference,borrow2,diff1,Cin);
or a3(Borrow,borrow1,borrow2);
end module
module halfsubtractor(Diff,Borrow,A,B);
output Diff,Borrow;
input A,B;
assign Diff=A^B;
assign Borrow= (~A )& B;
end module