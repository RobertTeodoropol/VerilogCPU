module Test_XOR;
reg [15:0] in1, in2; //inputs regs
wire [15:0] Result; //outputs wire

initial
begin
$display($time, " Test My Design");
       in1=2; in2=3;
#10 in1=1; in2=3; 
#10 in1=6; in2=2; 
#10 in1=5; in2=9; 
#10 in1=10; in2=10; 
#10 in1=10; in2=6; 
#10 in1=15; in2=15; 
end

initial
begin
$monitor($time, " 1st num.=%b, 2nd num.=%b, xor=%b", in1, in2, Result);
end

XOR MUT(in1, in2, Result);
endmodule



