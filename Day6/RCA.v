`timescale 1ns / 1ps

module RCA(
    input [3:0] X,
    input [3:0] Y,
    output [3:0] S,
    output Co
    );
    wire w1,w2,w3;
    fulladder u1(X[0],Y[0],1'b0,S[0],w1);
    fulladder u2(X[1],Y[1],w1,S[1],w2);
    fulladder u3(X[2],Y[2],w2,S[2],w3);
    fulladder u4(X[3],Y[3],w3,S[3],Co);
    
endmodule
module fulladder(X,Y,Ci,S,Co);
input X,Y,Ci;
output S,Co;
assign S=X^Y^Ci;
assign Co=(X&Y)|(Y&Ci)|(Ci&X);
endmodule

