`timescale 1ns / 1ps


module Fa_Ha(input A,B,Cin,
    output sum,carry
    );
    wire w1_sum1,w2_carry1,w3,w4;
    half_adder a1(A,B,w1_sum1,w2_carry1);
    half_adder a2(w1_sum1,Cin,sum,w3 );
    half_adder a3(w2_carry1,w3,carry,w4);
endmodule

module half_adder(
    input a,b,
    output s,ca
    );
    xor x1(s,a,b);
    and a1(ca,a,b);

endmodule
