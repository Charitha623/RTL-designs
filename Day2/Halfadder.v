`timescale 1ns / 1ps

module Halfadder(sum,carry,A,B);
output sum,carry;
input A,B;
assign sum= A^B;
assign carry = A&B; 

endmodule
