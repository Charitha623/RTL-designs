`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2023 08:15:07 PM
// Design Name: 
// Module Name: pri_encoder_tb
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


module pri_encoder_tb();
reg en;
reg[7:0] d;
wire[2:0] y;
prio_encoder8x3 uut(en,d,y);
initial begin
#10 en=0;
#10 d=8'b00000000;
#10 d=8'b00000001;
#10 d=8'b00000010;
#10 d=8'b00000100;
#10 d=8'b00001000;
#10 d=8'b00010000;
#10 d=8'b00100000;
#10 d=8'b01000000;
#10 d=8'b10000000;


#10 en=1;
#10 d=8'b00000000;
#10 d=8'b00000001;
#10 d=8'b00000010;
#10 d=8'b00000100;
#10 d=8'b00001000;
#10 d=8'b00010000;
#10 d=8'b00100000;
#10 d=8'b01000000;
#10 d=8'b10000000;
end
endmodule
