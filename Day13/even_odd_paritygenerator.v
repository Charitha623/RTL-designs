`timescale 1ns / 1ps


module even_odd_paritygenerator(a,e_out,o_out);
input[3:0] a;
output reg e_out,o_out;
always @(*)
begin
 e_out=^a;
 o_out=~e_out;
end
endmodule
