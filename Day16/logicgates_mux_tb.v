`timescale 1ns / 1ps


module logicgates_mux_tb();
reg a,b;
wire out_and,out_or,out_not;
logicgates_mux uut(a,b,out_and,out_or,out_not);
initial begin
#10 a=1'b0;b=1'b0;
#10 a=1'b0;b=1'b1;
#10 a=1'b1;b=1'b0;
#10 a=1'b1;b=1'b1;
#10 $finish;
end
endmodule
