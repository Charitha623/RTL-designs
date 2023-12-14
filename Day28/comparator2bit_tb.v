`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2023 08:36:30 PM
// Design Name: 
// Module Name: comparator2bit_tb
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


module comparator2bit_tb();
reg[1:0] a,b;
wire gt,eq,lt;
comparator2bit uut(a,b,gt,eq,lt);
initial begin
#40 a=2'b00;b=2'b11;
#40 a=2'b01;b=2'b01;
#40 a=2'b10;b=2'b11;
#40 a=2'b10;b=2'b01;
#40 a=2'b01;b=2'b00;
end
endmodule
