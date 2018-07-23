module Test_Subtract;
reg [15:0] in1, in2;
wire [15:0] Result; 

initial
begin
$display($time, " Test My Design");
#10 in1=2; in2=3;
#10 in1=15; in2=15; 
#10 in1=6; in2=2; 
#10 in1=5; in2=9; 
#10 in1=10; in2=10; 
#10 in1=10; in2=60;
#10 in1=2500; in2=1500;
#10 in1=1500; in2=2500; 
end 

initial
begin
$monitor($time, " in1=%d, in2=%d, Difference=%b", in1, in2, Result);
end

Subtract MUT(in1,in2,Result);
endmodule





