`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2023 07:48:17 PM
// Design Name: 
// Module Name: BinaryToGray_tb
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


module BinaryToGray_tb();
reg[7:0] b;
wire[7:0] g;
BinaryToGray uut(b,g);
initial begin
#40 b=8'b00101100;
#40 b=8'b10101000;
#40 b=8'b01101000;
#40 b=8'b10010110;
#40 $finish;
end
endmodule
