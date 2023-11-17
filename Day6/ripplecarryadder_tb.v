`timescale 1ns / 1ps

module ripplecarryadder_tb();
reg [3:0]X,Y;
wire [3:0]S;
wire Co;
RCA a1(X,Y,S,Co);
initial begin
X=4'b0010;
Y=4'b1100;
#10 
X=4'b1010;
Y=4'b1011;
#10
X=4'b0001;
Y=4'b0010;
#10 $finish;
end
endmodule
