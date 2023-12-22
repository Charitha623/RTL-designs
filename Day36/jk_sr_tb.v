`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/22/2023 08:54:35 PM
// Design Name: 
// Module Name: jk_sr_tb
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


module jk_sr_tb();
reg clk,rst,j,k;
wire q,qbar;

jk_sr_ff test_design(j,k,clk,rst,q,qbar);
  
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
