`timescale 1ns / 1ps


module carrylookaheadadder_tb();
reg [3:0] a;
reg [3:0] b;
reg cin;

// Outputs
wire [3:0] sum;
wire cout;
carrylookaheadadder dut(a,b,cin,sum,cout);
initial begin
// Initialize Inputs
a = 0;
b = 0;
cin = 0;
// Wait 100 ns for global reset to finish
#100;
a = 5;
b = 6;
cin = 1;
#100;
a = 2;
b = 3;
cin = 0;
#100;
a = 4;
b = 10;
cin = 1;

// Wait 100 ns for global reset to finish
#100;
end
endmodule
