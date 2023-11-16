`timescale 1ns / 1ps


module Fs_Hs_tb();
wire Difference,Borrow;
reg A,B,Cin;
fullsubtractor b1(Difference,Borrow,A,B,Cin);
initial begin
#10 A=0; B=0; Cin=0;
#10 A=0; B=0; Cin=1;
#10 A=0; B=1; Cin=0;
#10 A=0; B=1; Cin=1;
#10 A=1; B=0; Cin=0;
#10 A=1; B=0; Cin=1;
#10 A=1; B=1; Cin=0;
#10 A=1; B=1; Cin=1;
#40 $finish;
end
endmodule
