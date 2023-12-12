`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2023 08:59:15 PM
// Design Name: 
// Module Name: Decoder3x8_tb
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


module Decoder3x8_tb();
reg[2:0] in;
wire [7:0] out;
Decoder3x8 uut(in,out);
initial begin

#40 in=3'b000;
#40 in=3'b001;
#40 in=3'b010;
#40 in=3'b011;
#40 in=3'b100;
#40 in=3'b101;
#40 in=3'b110;
#40 in=3'b111;
end
 
endmodule
