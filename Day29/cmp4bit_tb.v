`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2023 09:39:38 PM
// Design Name: 
// Module Name: cmp4bit_tb
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


module cmp4bit_tb();
    reg [3:0]a,b;wire eq,gt,lt;
integer i;
cmp4bit dut(.a(a),.b(b),.eq(eq),.gt(gt),.lt(lt));
initial 
begin 
for(i=0;i<10;i=i+1) 
begin
a=$random;
b=$random;
#10;
end
$finish();
end
endmodule
