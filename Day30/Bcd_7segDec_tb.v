`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2023 09:30:28 PM
// Design Name: 
// Module Name: Bcd_7segDec_tb
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


module Bcd_7segDec_tb();
reg [3:0] a;
    wire [6:0] y;
    integer i;

    // Instantiate the Unit Under Test (UUT)
    Bcd_7segDec uut (
        .a(a), 
        .y(y)
    );

//Apply inputs
    initial begin
        for(i = 0;i < 16;i = i+1) //run loop for 0 to 15.
        begin
           a = i; 
            #10; //wait for 10 ns
        end     
    end
      
endmodule
