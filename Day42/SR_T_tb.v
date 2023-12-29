`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/29/2023 08:47:25 PM
// Design Name: 
// Module Name: SR_T_tb
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


module SR_T_tb();

reg clk,rst,s,r;
wire q,qbar;

  sr_ff uut(s,r,clk,rst,q,qbar);
  
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

     s = 1'b0;
     r = 1'b0;     
     #10;
    
     s = 1'b0;
     r = 1'b1;     
     #10;
     
     s = 1'b1;
     r = 1'b0;     
     #10;
     
     s = 1'b1;
     r = 1'b1;
     #10;
  
     $finish;
     end
endmodule

