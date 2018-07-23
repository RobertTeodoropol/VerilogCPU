module Decoder_test();

wire [15:0] instruction1; 
//reg [15:0] instruction; 
reg [3:0] address;
wire [7:0] en;
wire shift_bit;
wire [1:0] cond;
wire [2:0] reg_dest, reg_1, reg_2;
wire[3:0] opcode;

fetch MUT(address, instruction1); 


initial begin
$readmemh("data.txt", MUT.ROM.mem);
end


initial 
begin
$monitor($time, "instructions1= %h, Instruction=%b, en=%b, cond=%b, opcode=%b, reg_1=%b, reg_2=%b, shift_bit=%b",
		instruction1, instruction1,en,cond,opcode,reg_1,reg_2, shift_bit);
end 


initial
begin
$display($time, " Test My Design");

#10 address=0; 
#10 address=1;
#10 address=2;
#10 address=3;
#10 address=4; 
#10 address=5;
#10 address=6;
#10 address=7;  

end

Decoder MUU(instruction1,en,cond, opcode, reg_1, reg_2, shift_bit);


endmodule