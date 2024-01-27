`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2024 09:06:17 PM
// Design Name: 
// Module Name: sync_up_down_count_tb
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


module sync_up_down_count_tb(

    );
    reg clk;
    reg reset;
    reg up_down;

    // Outputs
    wire [3:0] count;

    // Instantiate the Unit Under Test (UUT)
    sync_up_down_counter uut (clk,reset,up_down,count);

//Generate clock with 10 ns clk period.
    initial clk = 0;
    always #5 clk = ~clk;
    
    initial begin
        // Apply Inputs
        reset = 0;
        up_down = 0;
        #300;
        up_down = 1;
      #300;
        reset = 1;
        up_down = 0;
        #100;
        reset = 0;  
    end
      
endmodule
