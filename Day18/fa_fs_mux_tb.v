`timescale 1ns / 1ps



module fa_fs_mux_tb();
reg a,b,cin;
wire sum,carry,diff,borrow;
fa_fs_mux uut(a,b,cin,sum,carry,diff,borrow);
initial begin
a=0; b=0; cin=0;
#10 a=0; b=0; cin=1;
#10 a=0; b=1; cin=0;
#10 a=0; b=1; cin=1;
#10 a=1; b=0; cin=0;
#10 a=1; b=0; cin=1;
#10 a=1; b=1; cin=0;
#10 a=1; b=1; cin=1;
end

endmodule
