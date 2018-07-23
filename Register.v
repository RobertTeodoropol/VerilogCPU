module Register(clk,D,reset,en,Q);
  output reg[15:0] Q;
  input [15:0] D;
  input clk,reset,en;

  always @(posedge clk or negedge reset)
   begin 
    if(~reset)
      Q<=16'h0000;
    else
      Q<=Q;
   end 

 always @ (negedge clk)
  begin
	if (en)
	 Q<=D;
	else
	 Q<=Q;
  end
endmodule
