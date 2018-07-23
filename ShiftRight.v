module shiftRight(in,shift,result);// for n=16-bit register, shift right by m=4
  parameter m = 4;
  parameter n = 16;
  input [n-1:0] in;
  input [m-1:0] shift;
  output [n-1:0] result;
  
  assign result = in >> shift;
  
endmodule 


