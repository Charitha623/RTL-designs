`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2023 09:02:37 PM
// Design Name: 
// Module Name: BcdToDecimal_tb
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


module BcdToDecimal_tb();
reg [3:0] a;
wire[9:0] y;
BcdToDecimal uut(a,y);
initial begin 
#10 a=4'b0000;
#10 a=4'b0001;
#10 a=4'b0010;
#10 a=4'b0011;
#10 a=4'b0100;
#10 a=4'b0101;
#10 a=4'b0110;
#10 a=4'b0111;
#10 a=4'b1000;
#10 a=4'b1001;
#10 a=4'b1010;
#10 a=4'b1011;
#10 a=4'b1100;
#10 a=4'b1101;
#10 a=4'b1110;
#10 a=4'b1111;
end



endmodule
