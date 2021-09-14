module Clock_divider(clock_in,clock_out);
input clock_in; 
output reg clock_out; 
reg[26:0] count=27'd0;
parameter div = 27'd28571428;

always @(posedge clock_in)
begin
 count <= count + 27'd1;
 if(count>=(div-1))
  count <= 27'd0;
  if(count<div/2)
    clock_out<=1'b1;
  else
    clock_out<=1'b0;
 
end
endmodule
