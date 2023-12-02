

module logicgates_mux(a,b,out_and,out_or,out_not);
input a,b;
output reg out_and,out_or,out_not;
always @(*)
begin
if(a==1'b0)
    begin
    out_and=1'b0;
    out_or= b;
    out_not=1'b1;
    end
 else
    begin
    out_and=b;
    out_or=1'b1;
    out_not=1'b0;
    end
  end
endmodule
