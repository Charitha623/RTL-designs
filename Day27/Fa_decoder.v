`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/13/2023 09:12:20 PM
// Design Name: 
// Module Name: Fa_decoder
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


module Fa_decoder(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
wire[7:0] y;
decoder a1(a,b,cin,y);
assign sum=y[1]|y[2]|y[4]|y[7];
assign carry=y[3]|y[5]|y[6]|y[7];


endmodule
 
module decoder(a,b,c,y);
input a,b,c;
output reg[7:0] y;
always @(*)
begin
case({a,b,c})
3'b000:y=8'b00000001;
3'b001:y=8'b00000010;
3'b010:y=8'b00000100;
3'b011:y=8'b00001000;
3'b100:y=8'b00010000;
3'b101:y=8'b00100000;
3'b110:y=8'b01000000;
3'b111:y=8'b10000000;
default:y=8'b00000000;



endcase
end 
endmodule



