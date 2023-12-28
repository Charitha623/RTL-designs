`timescale 1ns / 1ps



module T_jk_tb();

reg clk,rst,T;
wire q,qbar;

T_jk_ff test_design(T,clk,rst,q,qbar);
  
  initial begin 
  clk=0;
  forever #5 clk=~clk;
  end
  
  initial 
    begin
     rst=1;
     #10;

     rst=0;
      T = 1'b0;
     #10 T= 1'b1;     
     #10 T=1'b0;
    
     #10 T = 1'b1;
     #10 T=1'b0;
    
     #10 T = 1'b1;
     #10 $finish;
     end
endmodule


