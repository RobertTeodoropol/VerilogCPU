module Parameterized_ROR_Test;


reg [15:0] i0;
wire [15:0] result;

initial
begin
$display($time, " Test My Parameterized_ROR with default n=16, m=4");
   i0=16'b0000000011111111;
#3 i0=16'b1111111100000000;
#3 i0=16'b0011110000001100; 
#3 i0=16'b0000101010101010;
#3 i0=16'b1100000000000011;
end

initial
begin
$monitor($time , " i0=%b, Result=%b", i0, result);
end

Parameterized_ROR MUT(i0,result);

endmodule



