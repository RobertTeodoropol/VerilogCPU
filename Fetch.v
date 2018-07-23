module fetch (pc, instruction);
input [3:0] pc;
output [15:0] instruction;


rom_project ROM(1'b0,instruction,pc);


endmodule

