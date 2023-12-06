`timescale 1ns / 1ps

module Demux8x1_tb();
reg d,s0,s1,s2;
wire y0,y1,y2,y3,y4,y5,y6,y7;
demux8x1 uut(d,s0,s1,s2,y0,y1,y2,y3,y4,y5,y6,y7);
initial 
begin 
d=1'b1;
#10 s0=0;s1=0;s2=0;
#10 s0=0;s1=0;s2=1;
#10 s0=0;s1=1;s2=0;
#10 s0=0;s1=1;s2=1;


#10 s0=1;s1=0;s2=0;
#10 s0=1;s1=0;s2=1;
#10 s0=1;s1=1;s2=0;
#10 s0=1;s1=1;s2=1;
end

endmodule

