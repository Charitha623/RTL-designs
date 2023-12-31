`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2023 05:50:32 PM
// Design Name: 
// Module Name: D_t_tb
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


module D_t_tb();



reg clk,rst,D;
wire q,qbar;

D_t_ff test_design(D,clk,rst,q,qbar);
  
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



