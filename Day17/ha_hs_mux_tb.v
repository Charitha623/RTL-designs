`timescale 1ns / 1ps


module ha_hs_mux_tb();
reg a,b;
wire sum,carry,diff,borrow;
ha_hs_mux uut(a,b,sum,carry,diff,borrow);
initial begin
    a=1'b0; b=1'b0;
#10 a=1'b0; b=1'b1;
#10 a=1'b1; b=1'b0;
#10 a=1'b1; b=1'b1;
#10 $finish;
end
 
endmodule
