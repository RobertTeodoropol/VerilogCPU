module Subtract(A, B, result);
parameter n= 16;
input [(n-1):0] A, B;
output [(n-1):0] result;

assign result = A-B;

endmodule