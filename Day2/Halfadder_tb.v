`timescale 1ns / 1ps

module Halfadder_tb();
wire sum,carry;
reg A,B;
Halfadder b1(sum,carry,A,B); 
initial begin
#10 A=0; B=0;
#10 A=0; B=1;
#10 A=1; B=0;
#10 A=1; B=1;
#40 $finish;
end
endmodule
