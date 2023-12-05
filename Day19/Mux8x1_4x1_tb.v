`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2023 09:23:18 PM
// Design Name: 
// Module Name: Mux8x1_4x1_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Mux8x1_4x1_tb();
reg [3:0] a,b,c,d,e,f,g,h;
reg [2:0] sel;
wire [3:0] y;
Mux8x1_4x1 uut(a,b,c,d,e,f,g,h,sel,y);
initial begin
a=8;b=9;c=10;d=11;e=12;f=13;g=14;h=15;
#10 sel=3'b000;
#10 sel=3'b001;
#10 sel=3'b010;
#10 sel=3'b011;
#10 sel=3'b100;
#10 sel=3'b101;
#10 sel=3'b110;
#10 sel=3'b111;
#10 $finish;
end


endmodule
