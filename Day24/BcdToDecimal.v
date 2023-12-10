`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2023 08:56:47 PM
// Design Name: 
// Module Name: BcdToDecimal
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


module BcdToDecimal(a,y);
input[3:0] a;
output reg[9:0] y;
always @(*)
begin
case(a)
0:y=10'b0000000001;
1:y=10'b0000000010;
2:y=10'b0000000100;
3:y=10'b0000001000;
4:y=10'b0000010000;
5:y=10'b0000100000;
6:y=10'b0001000000;
7:y=10'b0010000000;
8:y=10'b0100000000;
9:y=10'b1000000000;
default:y=10'b0000000000;
endcase
end
endmodule
