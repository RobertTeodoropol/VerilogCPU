module Operation_MUX_TB;

reg [15:0] ADD, SUB, MULT, OR, AND, XOR, RS, LS, RR;
reg [3:0] opcode;
wire [15:0] result;



initial
begin
$display($time, " Test My Operation Multiplexer");
ADD=10;SUB=5;MULT=52;OR=1;AND=3;XOR=2;RS=1;LS=1;RR=234;
#5 opcode=4'b0001;
#5 opcode=4'b0010;
#5 opcode=4'b0011;
#5 opcode=4'b0100;
#5 opcode=4'b0101;
#5 opcode=4'b0110;
#5 opcode=4'b0111;
#5 opcode=4'b1000;
#5 opcode=4'b1001;

end

initial
begin
$monitor($time, " ADD=%d,SUB=%d,MULT=%d,OR=%d,AND=%d,XOR=%d,RS=%d,LS=%d,RR=%d,opcode=%b,result=%b", ADD,SUB,MULT,OR,AND,XOR,RS,LS,RR,opcode,result);
end

Operation_MUX MUT(ADD, SUB, MULT, OR, AND, XOR, RS, LS, RR, opcode,result);



endmodule

