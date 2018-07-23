module ShiftRight_Test;

reg [15:0] in;
reg [3:0] shift;
wire [15:0] result;
  


initial
begin
$display($time, " Test My Parameterized Right Shift Register with Default n=16, m=4");
   in=8'b11111111; shift=0;
#5 in=8'b10101010; shift=1;
#5 in=8'b11110000; shift=2;
#5 in=8'b00001111; shift=3;
end

initial
begin
$monitor($time , " Input=%b, Result=%b", in, result);
end


shiftRight MUT(in,shift,result);
endmodule




