`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/19/2023 09:28:40 PM
// Design Name: 
// Module Name: jk_ff_tb
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


module jk_ff_tb();
 reg clk,rst,j,k;
wire q_n,q_n_bar;

  jk_ff test_design(j,k,clk,rst,q_n,q_n_bar);
  
  initial begin 
  clk=0;
  forever #5 clk=~clk;
  end
  
  initial 
    begin
     rst=1;
     #10;

     rst=0;
     #10;

     j = 1'b0;
     k = 1'b0;     
     #10;
    
     j = 1'b0;
     k = 1'b1;     
     #10;
     
     j = 1'b1;
     k = 1'b0;     
     #10;
     
     j = 1'b1;
     k = 1'b1;
     #10;
  
     $finish;
     end
endmodule
