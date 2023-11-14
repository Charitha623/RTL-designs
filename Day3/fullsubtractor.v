`timescale 1ns / 1ps

module fullsubtractor(Difference,Borrow,A,B,Cin);
output Difference,Borrow;
input A,B,Cin;
assign Difference= A^B^Cin;
assign Borrow=Cin&(A~^B)|(~A&B);
endmodule
