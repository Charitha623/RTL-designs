`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/21/2023 09:21:28 PM
// Design Name: 
// Module Name: Tff_tb
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
module t_tb();
reg clk,rst,T;
wire q,qbar;

T_ff test_design(T,clk,rst,q,qbar);
  
  initial begin 
  clk=0;
  forever #5 clk=~clk;
  end
  
  initial 
    begin
     rst=1;
     #10;

     rst=0;
     #10 T = 1'b0;
     #10 T= 1'b1;     
     #10 T=1'b0;
    
     #10 T = 1'b1;
     #10 $finish;
     end
endmodule

