`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2023 09:16:19 PM
// Design Name: 
// Module Name: comparator3bit_tb
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


module comparator3bit_tb();
reg [2:0]a,b;wire equal,greater,lower;
integer i;
comparator3bit dut(a,b,greater,equal,lower);
initial begin
// Initialize Inputs 
a = 3'b000; b =3'b000;
// Wait 100 ns for global reset to finish
#100;
// Add stimulus here 
#100; a = 3'b111; b = 3'b101;
#100; a = 3'b100; b = 3'b110;
#100; a = 3'b111; b = 3'b111; 
$finish();
end
endmodule
