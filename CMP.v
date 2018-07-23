module CMP (IN0, IN1, flags);
parameter N=16;
input [(N-1):0] IN0, IN1;
output [3:0] flags;
reg [3:0] flags;
always @ *
begin
if (IN0 > IN1) 
	flags = 4'b0000;
else if (IN0 < IN1) 
	flags = 4'b0100;
else 
	flags = 4'b1000;
end
endmodule
