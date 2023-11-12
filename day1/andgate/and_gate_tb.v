`timescale 1ns / 1ps
module and_gate_tb();
wire Y;
reg A,B;
and_gate DUT (.Y(Y),.A(A),.B(B));
    initial begin
    #10 A=0;B=0;
    #10 A=0;B=1;
    #10 A=1;B=0;
    #10 A=1;B=1;
    #40 $finish;
    end

endmodule
