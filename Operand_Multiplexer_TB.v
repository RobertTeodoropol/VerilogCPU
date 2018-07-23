module Operand_Multiplexer_TB;

reg [15:0] in0, in1, in2, in3, in4, in5, in6, in7;
reg [2:0] sel;
wire [15:0] out;

initial
begin
$display($time, " Test My Operand Multiplexer");
in0=15; in1=32; in2=86; in3=43; in4=14; in5=93; in6=11; in7=98;
#5 sel=3'b000;
#5 sel=3'b001;
#5 sel=3'b010;
#5 sel=3'b011;
#5 sel=3'b100;
#5 sel=3'b101;
#5 sel=3'b110;
#5 sel=3'b111;
end

initial
begin
$monitor($time, " in0=%d, in1=%d,in2=%d,in3=%d,in4=%d,in5=%d,in6=%d,in7=%d,sel=%b,out=%d", in0,in1,in2,in3,in4,in5,in6,in7,sel,out);
end

Operand_multiplexer MUT(in0,in1,in2,in3,in4,in5,in6,in7,sel,out);

endmodule