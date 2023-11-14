`timescale 1ns / 1ps

module fulladder(sum,carry,A,B,Cin);
output sum,carry;
input A,B,Cin;
assign sum= (A^B)^Cin;
assign carry = (Cin&(A^B))|(A&B);
endmodule
