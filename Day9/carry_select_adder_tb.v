`timescale 1ns / 1ps

module carry_select_adder_tb();

    // Inputs
    reg [3:0] A;
    reg [3:0] B;
    reg cin;
    // Outputs
    wire [3:0] S;
    wire cout;  
   

    // Instantiate the Unit Under Test (UUT)
    carry_select_adder uut (A,B,cin,S,cout);

//Stimulus block - all the input combinations are tested here.
//the number of errors are recorded in the signal named "error".
    initial begin
        // Initialize Inputs
        A = 0;
        B = 0;
        //for carry in =0
        cin = 0;
      #10 A=2; B=6; cin=1;
      #10 A=4; B=8; cin=0;
      #10 A=5; B=4; cin=1;
      #10 A=7; B=3; cin=1;
      #10 $finish;
      end
    
endmodule

