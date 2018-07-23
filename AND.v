module AND(i0,i1,result);
  parameter n = 16;
  input[n-1:0] i0,i1;
  output[n-1:0] result; 

  assign result = (i0 & i1);
  
endmodule 

