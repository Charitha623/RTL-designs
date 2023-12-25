`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2023 08:33:20 PM
// Design Name: 
// Module Name: JK_D_tb
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


module JK_D_tb();
reg clk,rst,j,k;
wire q,qbar;

JK_D_ff test_design(j,k,clk,rst,q,qbar);
  
  initial begin 
  clk=0;
  forever #5 clk=~clk;
  end
  
  initial 
    begin
     rst=1;
     #10;

     rst=0;
      j = 1'b0;k=1'b0;
     #10 j= 1'b0;k=1'b1;
          
     #10 j=1'b1;k=1'b0;
     
    
     #10 j = 1'b1;k=1'b1;
    
    
    
     #10 $finish;
     end
endmodule


