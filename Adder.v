module Add(A, B, Sum, flags);//Flags are NZCV
parameter N=16;
input [(N-1):0] A, B;
output [(N-1):0] Sum;
output [3:0] flags;
wire [N:0] result;

assign {flags[1],result} = A+B;
assign Sum = result;
assign flags[3] = result[N];//negative flag
assign flags[2] = (Sum == 32'h00000000) ? 1:0;//zero flag 
assign flags[0] = ((A[N-1] == B[N-1]) & (Sum[N-1] != A[N-1] ) ) ? 1:0;//z flag

endmodule



