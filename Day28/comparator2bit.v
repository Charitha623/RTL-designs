`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2023 07:44:25 PM
// Design Name: 
// Module Name: comparator2bit
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


module comparator2bit(a,b,gt,eq,lt);
input[1:0] a,b;
output reg gt,eq,lt;
always@(*)
begin
gt=0;eq=0;lt=0;
if(a[1]>b[1])
gt=1;
else if(a[1]==b[1])
begin
 if(a[0]>b[0])
 gt=1;
 else if(a[0]==b[0])
 eq=1;
 else
 lt=1;
 end
else 
 lt=1;
 end

endmodule
