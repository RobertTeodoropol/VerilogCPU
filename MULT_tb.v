module Test_MULT;
reg [15:0] in1, in2; //inputs regs
wire [15:0] Result; //outputs wire

initial
begin
$display($time, " Test My Design");
       in1=2; in2=3;
#10 in1=5; in2=5; 
#10 in1=6; in2=6; 
#10 in1=25; in2=10; 
#10 in1=250; in2=100; 
#10 in1=1; in2=1; 
#10 in1=300; in2=3; 
end

initial
begin
$monitor($time, " 1st num.=%d, 2nd num.=%d, MULT_Result=%d", in1, in2, Result);
end

MULT MUT(in1, in2, Result);
endmodule





