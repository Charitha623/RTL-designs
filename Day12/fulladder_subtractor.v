`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2023 08:51:49 PM
// Design Name: 
// Module Name: fulladder_subtractor
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


module fulladder_subtractor(a,b,c,ctrl,sum,carry,diff,borrow);
input a,b,c;
input ctrl;
output reg sum,carry,diff,borrow;
always @(*)
begin
    if(ctrl==0)
    begin
        sum=a^b^c;
        carry=(a&b)|(b&c)|(c&a);
        diff=0;borrow=0;
    end
    else
    begin
        diff=a^b^c;
        borrow=c&(a~^b)|(~a&b);
        sum=0;carry=0;
        end
end
        


endmodule
