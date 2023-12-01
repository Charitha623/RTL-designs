`timescale 1ns / 1ps


module mux8x1_tb();
reg [3:0] a1,a2,a3,a4,a5,a6,a7,a8;
reg [2:0] sel;
wire [3:0] out;
mux8x1 uut(a1,a2,a3,a4,a5,a6,a7,a8,sel,out);
initial begin
#10 a1=4'b0000;a2=4'b0001;a3=4'b0010;a4=4'b0011;a5=4'b0100;a6=4'b0101;a7=4'b0110;a8=4'b0111;
#10 sel=3'b000;
#10 sel=3'b001;
#10 sel=3'b010;
#10 sel=3'b011;
#10 sel=3'b100;
#10 sel=3'b101;
#10 sel=3'b110;
#10 sel=3'b111;
end


endmodule
