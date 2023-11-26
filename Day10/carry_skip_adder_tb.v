`timescale 1ns / 1ps

module carry_skip_adder_tb();
 reg [3:0] a,b;
    reg cin;
    // Outputs
    wire [3:0] sum;
    wire cout;  
   

    // Instantiate the Unit Under Test (UUT)
    carry_skip_adder uut (a,b,cin,sum,cout);

//Stimulus block - all the input combinations are tested here.
//the number of errors are recorded in the signal named "error".
    initial begin
        // Initialize Inputs
        a = 0;
        b = 0;
        //for carry in =0
        cin = 0;
      #10 a=2; b=6; cin=1;
      #10 a=4; b=8; cin=0;
      #10 a=5; b=4; cin=1;
      #10 a=7; b=3; cin=1;
      #10 $finish;
      end
endmodule
