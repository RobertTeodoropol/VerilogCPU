module Register_Bank(clk, ALUresult, reset, en, sel0, sel1, OP0, OP1);
  input [15:0] ALUresult;
  input [7:0] en;
  input [2:0] sel0, sel1;
  input clk,reset;
  output [15:0] OP0,OP1;
  wire [15:0] Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7;
  wire [15:0] out0,out1;	
            	
  
  Register R0(clk, ALUresult, reset, en[0], Q0);
  
  Register R1(clk, ALUresult, reset, en[1], Q1);
  
  Register R2(clk, ALUresult, reset, en[2], Q2);
  
  Register R3(clk, ALUresult, reset, en[3], Q3);
    
  Register R4(clk, ALUresult, reset, en[4], Q4);
      
  Register R5(clk, ALUresult, reset, en[5], Q5);
  
  Register R6(clk, ALUresult, reset, en[6], Q6); 
  
  Register R7(clk, ALUresult, reset, en[7], Q7);
  
  Operand_multiplexer Operand0(Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7, sel0, out0);
  
  Operand_multiplexer Operand1(Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7, sel1, out1);

  assign OP0 = out0;
  
  assign OP1 = out1;
  
  
endmodule 
  
  
