module ALU_Testbench;

  reg [15:0] R2,R3;
  reg[3:0] OP;
  reg [4:0] m;
  wire [15:0] R1;
  wire [3:0] flags;
//The test cases below should be run with the monitor that displays in decimal

initial
begin
$display($time, " Test My ALU - Decimal Operations");
  $display ("ADD"); 
    R2=5; R3=10; OP=4'b0000;
#5   $display ("SUB"); 
    R2=10; R3=5; OP=4'b0001;
#5   $display ("OR"); 
    R2=4278; R3=3589; OP=4'b0011;
#5  $display ("MULTIPLY"); 
    R2=12; R3=4; m=5'b0; OP=4'b0010;
#5 $display ("XOR");
    R2=35434528; R3=956482285; OP=4'b0101;
#5  $display ("MULTIPLY"); 
    R2=32'd1; R3=32'd1; m=5'b0; OP=4'b0010;
#5 $display ("RS"); 
    R2=32'hFFFFFFFF; m=4'd4; OP=4'b0110;
#5 $display ("LS"); 
    R2=32'hFFFFFFFF; m=4'd4; OP=4'b0111;
#5  $display ("MULTIPLY");     
    R2=32'd10; R3=32'd5; m=5'b0; OP=4'b0010;
#5 $display ("RR"); 
    R2=32'hFFFFFFF0; m=4'd4; OP=4'b0110; 
#5  $display ("MULTIPLY"); 
    R2=32'd100; R3=32'd250; m=5'b0; OP=4'b0010;



      
end


initial
begin
$monitor($time , " R2=%d, R3=%d, m=%b, OP=%b, R1=%d, flags=%b", R2, R3, m, OP, R1,flags);
end



ALU MUT(R2,R3,m,OP,R1,flags);
endmodule






