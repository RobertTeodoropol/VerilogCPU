
module XOR(A,B,result);
parameter N=16;
input [(N-1):0] A, B;
output [(N-1):0] result;

assign result = A ^ B;
endmodule
