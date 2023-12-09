`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2023 07:35:58 PM
// Design Name: 
// Module Name: BinaryToGray
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


module BinaryToGray(b,g);
input[7:0] b;
output[7:0] g;
assign g[7]=b[7];
xor a1(g[6],b[7],b[6]);
xor a2(g[5],b[6],b[5]);
xor a3(g[4],b[5],b[4]);
xor a4(g[3],b[4],b[3]);
xor a5(g[2],b[3],b[2]);
xor a6(g[1],b[2],b[1]);
xor a7(g[0],b[1],b[0]);



endmodule

