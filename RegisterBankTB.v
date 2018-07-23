module Register_Bank_Testbench;

  reg [15:0] ALUresult;
  reg [7:0] en;
  reg [2:0] sel0,sel1;
  reg clk, reset;
  wire [15:0] Operand0,Operand1;
  

initial
begin
$display($time, " Test Reading From My Register Bank");

   
   $display ("Read R0 and R1"); 
    clk=1'b0; sel0=3'b000; sel1=3'b001; reset=1'b1;
#4 $display  ("Read R1 and R2"); sel0=3'b001; sel1=3'b010; reset=1'b1; ALUresult = 16'b0000000000000000; en = 8'b11111111;
#10 $display ("Read R2 and R3"); sel0=3'b010; sel1=3'b011; reset=1'b1; ALUresult = 16'b0000000000000001;
#10 $display ("Read R3 and R4"); sel0=3'b011; sel1=3'b100; reset=1'b1; ALUresult = 16'b0000000000000010;
#10 $display ("Read R4 and R5"); sel0=3'b100; sel1=3'b101; reset=1'b1; ALUresult = 16'b0000000000000100;
#10 $display ("Read R5 and R6"); sel0=3'b101; sel1=3'b110; reset=1'b1; ALUresult = 16'b0000000000001000; en = 8'b00000000;
#10 $display ("Read R6 and R7"); sel0=3'b110; sel1=3'b111; reset=1'b1; ALUresult = 16'b0000000011110000;
#10 $display ("Read R6 and R6"); sel0=3'b110; sel1=3'b111; reset=1'b1; ALUresult = 16'b0000000011110000;
#10 $display ("Read R6 and R6"); sel0=3'b110; sel1=3'b111; reset=1'b1; ALUresult = 16'b0000110011110000; en = 8'b11111111;
end


initial
begin
$monitor($time , " sel0=%b, sel1=%b, Operand0=%b, Operand1=%b", sel0,sel1,Operand0,Operand1);
end 

always #5 clk=~clk; //after 5 time cycles, complement clock

Register_Bank MUT(clk,ALUresult,1'b1,en,sel0,sel1,Operand0,Operand1);

/*Register_Bank(clk,ALUresult,reset,en,sel0,sel1,Operand0,Operand1);
  input [15:0] ALUresult;
  input [7:0] en;
  input [2:0] sel0,sel1;
  input clk,reset;
  output [15:0] Operand0,Operand1;*/

endmodule