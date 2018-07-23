module MULT(A,B,Result);
parameter N=16;
input [(N-1):0] A,B;
output [(N-1):0] Result;

assign Result = A*B;

endmodule
