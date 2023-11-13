`timescale 1ns / 1ps

module Halfsubtractor_tb();
wire Difference,Borrow;
reg A,B;
Halfsubtractor b1(Difference,Borrow,A,B);
initial begin
#10 A=0; B=0;
#10 A=0; B=1;
#10 A=1; B=0;
#10 A=1; B=1;
#40 $finish;
end
endmodule
