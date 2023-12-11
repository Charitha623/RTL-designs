`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2023 09:48:46 PM
// Design Name: 
// Module Name: Excess3Encoder_tb
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


module Excess3Encoder_tb();
reg [3:0] b;
// Outputs
wire [3:0] e;
// Instantiate the Unit Under Test (UUT)
Excess3Encoder uut (
.b(b),
.e(e)
);
initial begin
// Initialize Inputs
b=3'b0000;
#10;
b=4'b0001;
#10;
b=4'b0010;
#10;
b=4'b0011;
#10;
b=4'b0100;
#10;
b=4'b0101;
#10;
b=4'b0110;
#10;
b=4'b0111;
#10;
b=4'b1000;
#10;
b=4'b1001;
end
endmodule
