`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/03/2024 09:56:33 PM
// Design Name: 
// Module Name: Async_up_down_count_tb
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


module Async_up_down_count_tb;

    // Inputs
    reg Clk;
    reg reset;
    reg UpOrDown;

    // Outputs
    wire [3:0] Count;

    // Instantiate the Unit Under Test (UUT)
    Async_up_down_counter uut (
        .Clk(Clk), 
        .reset(reset), 
        .UpOrDown(UpOrDown), 
        .Count(Count)
    );

//Generate clock with 10 ns clk period.
    initial Clk = 0;
    always #5 Clk = ~Clk;
    
    initial begin
        // Apply Inputs
        reset = 0;
        UpOrDown = 0;
        #300;
        UpOrDown = 1;
      #300;
        reset = 1;
        UpOrDown = 0;
        #100;
        reset = 0;  
    end
      
endmodule
