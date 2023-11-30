`timescale 1ns / 1ps

module binary_multiplier_tb();

reg[3:0] a,b;
wire[7:0] product;
binary_multiplier uut(a,b,product);
initial begin
#10 a=4'b0010; b=4'b0011;
#10 a=4'b0100; b=4'b1000;
#10 a=4'b1010; b=4'b0101;
#10 a=4'b0111; b=4'b1001;
#10 $finish;
end
endmodule
