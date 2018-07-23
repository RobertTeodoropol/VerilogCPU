module shiftLeft(in,shift,result);// n=16, shift left by m=4
  parameter n = 16;
  parameter m = 4;
  input [n-1:0] in;
  input [m-1:0] shift;
  output [n-1:0] result;
  
  assign result = in << shift;
  
endmodule 
