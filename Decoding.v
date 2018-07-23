module Decoder(instruction, en, cond, opcode, reg_1, reg_2, shift_bit);

input [15:0] instruction; 
output reg [7:0] en;
output reg [3:0] shift_bit;
output reg [1:0] cond;
output reg [2:0] reg_1, reg_2;
output reg [3:0] opcode;
reg [2:0] reg_dest;

always @ (instruction)
 begin
	cond = instruction [15:14];
	opcode = instruction [13:10];
	reg_dest = instruction [9:7];
	reg_1 = instruction [6:4];
	reg_2 = instruction [3:1];
	shift_bit = instruction[3:0];
	en = (8'b1) << reg_dest;
$display($time, " cond = %b, opcode = %b, reg_dest = %b, reg_1 = %b, reg_2 = %b, shift_bit = %b",
					cond, opcode, reg_dest, reg_1, reg_2, shift_bit);
 end

endmodule 



