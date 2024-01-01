`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2024 06:30:57 PM
// Design Name: 
// Module Name: Async_up_counter
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


module Async_up_counter(
    input clk,rst,
    output [3:0] q
    );
 
    
    t_flipflop1 a1(.t(1'b1),.clk(clk),.rst(rst),.q(q[0]));
     t_flipflop1 a2(.t(1'b1),.clk(q[0]),.rst(rst),.q(q[1]));
    t_flipflop1 a3(.t(1'b1),.clk(q[1]),.rst(rst),.q(q[2]));
     t_flipflop1 a4(.t(1'b1),.clk(q[2]),.rst(rst),.q(q[3]));
endmodule
module t_flipflop1(
    input t,clk,rst,
    output reg q,qbar
    ); 
    initial q=0;
    
    always@(negedge clk)
    begin
   
    if(rst)
    begin
    q=0;qbar=1;
    end
    else begin
     if(t==1)
     q=(t&~q)|(~t&q);
     qbar=~q;
    end
    end
endmodule
