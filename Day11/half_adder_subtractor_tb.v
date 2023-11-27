`timescale 1ns / 1ps


module half_adder_subtractor_tb();
reg a,b,ctrl;
wire sum,carry,difference,borrow;
half_adder_subtractor uut(a,b,ctrl,sum,carry,difference,borrow);
initial
begin
#10 ctrl=0;a=0;b=0;
#10 ctrl=0;a=0;b=1;
#10 ctrl=0;a=1;b=0;
#10 ctrl=0;a=1;b=1;
#10 ctrl=1;a=0;b=0;
#10 ctrl=1;a=0;b=1;
#10 ctrl=1;a=1;b=0;
#10 ctrl=1;a=1;b=1;
#10 $finish;
end

endmodule
