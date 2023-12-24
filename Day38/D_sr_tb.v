`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2023 07:40:06 PM
// Design Name: 
// Module Name: D_sr_tb
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


module D_sr_tb();

reg clk,rst,D;
wire q,qbar;

D_sr_ff test_design(D,clk,rst,q,qbar);
  
  initial begin 
  clk=0;
  forever #5 clk=~clk;
  end
  
  initial 
    begin
     rst=1;
     #10;

     rst=0;
      D = 1'b0;
     #10 D= 1'b1;     
     #10 D=1'b0;
    
     #10 D = 1'b1;
     #10 D=1'b0;
    
     #10 D = 1'b1;
     #10 $finish;
     end
endmodule



