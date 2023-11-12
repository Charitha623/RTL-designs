`timescale 1ns / 1ps

module logic_gates_tb( );
    wire Y_and,Y1_or,Y2_not,Y3_nand,Y4_nor,Y5_xor,Y6_xnor;
reg A,B;
logic_gates b1(A,B,Y_and,Y1_or,Y2_not,Y3_nand,Y4_nor,Y5_xor,Y6_xnor);
    initial begin
    #10 A=0;B=0;
    #10 A=0;B=1;
    #10 A=1;B=0;
    #10 A=1;B=1;
    #40 $finish;
    end
endmodule
