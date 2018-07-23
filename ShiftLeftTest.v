module ShiftLeft_Test;

reg [15:0] in;
reg [4:0] shift;
wire [15:0] result;
  


initial
begin
$display($time, " Test My Parameterized Left Shift Register with Default n=16, m=4");
   in=16'b1111111111111111; shift = 0;
#5 in=16'b1010101010101010; shift = 1;
#5 in=16'b1111111100000000; shift = 2;
#5 in=16'b0000000011111111; shift = 3;
#5 in=16'b11110000;
end

initial
begin
$monitor($time , " Input=%b, Result=%b", in, result);
end


shiftLeft MUT(in,shift,result);
endmodule



