module Test_Add;
reg [15:0] in1, in2;
wire [15:0] Result;
wire [3:0] flags; 


initial
begin
$display($time, " Test My Design");
    in1=2; in2=3;
#10 in1=429496729; in2=30; 
#10 in1=202949672; in2=402949672; 
#10 in1=5; in2=9; 
#10 in1=10; in2=10; 
#10 in1=0; in2=0; 
end 

initial
begin
$monitor($time, " in1=%d, in2=%d, Sum=%d, Flags=%b", in1, in2, Result, flags);
end

Add MUT(in1,in2,Result,flags);
endmodule



