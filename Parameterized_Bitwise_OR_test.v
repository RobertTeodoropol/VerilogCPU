//default timescale is 1ps per time cycle 

module Test_Parameterized_Bitwise_OR;

reg [15:0] i0,i1;
wire [15:0] result;

initial
begin
$display($time, " Test My Parameterized Bitwise OR with 16-bit inputs");//displays once
   
   i0=16'b1100110011000000; i1=16'b0001000100010001;
#5 i0=16'b1110111011100000; i1=16'b0010001000100010;
#5 i0=16'b1110111011100000; i1=16'b0001000100010001;
#5 i0=4'b011; i1=4'b0101;
#5 i0=4'b0001; i1=4'b0001;
#5 i0=4'b0001; i1=4'b0011;
#5 i0=4'b0001; i1=4'b0111;
#5 i0=4'b1001; i1=4'b01;
#5 i0=4'b0010; i1=4'b01;
#5 i0=4'b1; i1=4'b1;
#5 i0=4'b1111; i1=4'b0000;
#5 i0=4'b0000; i1=4'b1111;
end

initial
begin
$monitor($time , " i0=%b, i1=%b, result=%b", i0, i1, result);
end

parameterized_bitwise_or MUT(i0,i1,result);//passing parameters by position 

endmodule





