`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2023 08:49:41 PM
// Design Name: 
// Module Name: comparator3bit
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


module comparator3bit(a,b,greater,equal,lower);
input[2:0] a,b;
 output reg equal, greater, lower;
   

always @ (a or b)
    begin 
     greater=0; equal=0; lower=0;
        if (a < b)
            begin
            greater = 0; equal = 0; lower = 1;
            end   
        else if (a == b)
            begin
            greater = 0; equal = 1; lower = 0;
            end
        else
            begin
            greater = 1; equal = 0; lower = 0;
            end
end  
endmodule
