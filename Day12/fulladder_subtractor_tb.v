`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2023 09:16:14 PM
// Design Name: 
// Module Name: fulladder_subtractor_tb
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


module fulladder_subtractor_tb();
reg a,b,c,ctrl;
wire sum,carry,diff,borrow;
fulladder_subtractor uut(a,b,c,ctrl,sum,carry,diff,borrow);
initial begin

#10 ctrl=0;a=0;b=0;c=0;
#10 ctrl=0;a=0;b=0;c=1;
#10 ctrl=0;a=0;b=1;c=0;
#10 ctrl=0;a=0;b=1;c=1;



#10 ctrl=1;a=1;b=0;c=0;
#10 ctrl=1;a=1;b=0;c=1;
#10 ctrl=1;a=1;b=1;c=0;
#10 ctrl=1;a=1;b=1;c=1;
end

endmodule
