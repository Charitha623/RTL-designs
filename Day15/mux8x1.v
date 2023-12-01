`timescale 1ns / 1ps


module mux8x1(a1,a2,a3,a4,a5,a6,a7,a8,sel,out);
input[3:0] a1,a2,a3,a4,a5,a6,a7,a8;
input[2:0] sel;
output reg [3:0] out;
always @(*)
begin
case(sel)
3'b000: out=a1;
3'b001: out=a2;
3'b010: out=a3;
3'b011: out=a4;
3'b100: out=a5;
3'b101: out=a6;
3'b110: out=a7;
3'b111: out=a8;
default: out=4'b0;
endcase
end

endmodule
