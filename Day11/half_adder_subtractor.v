`timescale 1ns / 1ps


module half_adder_subtractor(
    input a,b,
    input ctrl,
    output reg sum,carry,difference,borrow
    );
    always @(*)
 begin
   if(ctrl==1)
     begin 
       differnce=(a^b);
       borrow= ~a&b;carry=0;sum=0;
     end 
else
   begin
      sum=(a^b);
      carry=a&b;borrow=0;differnce=0;
   end
end
endmodule