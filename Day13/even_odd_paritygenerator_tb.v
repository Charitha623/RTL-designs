`timescale 1ns / 1ps


module even_odd_paritygenerator_tb();
reg[3:0] a;
wire e_out,o_out;
even_odd_paritygenerator uut(a,e_out,o_out);
initial begin
#10 a=0;
#10 a=1;
#10 a=2;
#10 a=3;
#10 a=4;
#10 a=5;
#10 a=10;
#10 a=12;
#10 a=13;
#10 $finish;

end


endmodule
