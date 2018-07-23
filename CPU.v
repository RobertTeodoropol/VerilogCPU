module CPU(clk1, clk2, reset, result, insta);
input clk1, clk2;
input reset;
input [15:0] insta;
output [15:0] result;
// FSM stuff
reg [1:0] nextState, currentState;
localparam  s0 = 2'b00, s1=2'b01, s2=2'b10;

//Fetch Stuff
reg  [3:0] pc;
wire [15:0] instruction;

// Decode Stuff
wire [7:0] en;
wire [1:0] cond;
wire [3:0] opcode;
wire [2:0] reg_dest, sel_1, sel_2;
wire [3:0] shift_bit;
// RegBank Stuff (Execute)
wire [15:0] OP0, OP1;

// ALU stuff (Execute)
wire [3:0] flags;
wire [15:0] ALUresult;

// FSM
always@ (posedge clk1 or negedge reset)
 begin
	if(~reset)
	 begin 
 		currentState = s0;
 		pc = 0;
	 end
	else 
		currentState = nextState;
 end


always@ (currentState)
 begin
	case(currentState)
	s0: 
	 nextState = s1;	

	s1: 
	 nextState = s2;
	
 	s2:  
	 begin
	  nextState = s0;
	  pc = pc+1;
	  $display ( $time, " pc = %b", pc);
	 end	
	endcase
 end
// Fetch
fetch Fetch(pc, instruction);


// Decode
Decoder Decode(instruction, en, cond, opcode, sel_1, sel_2, shift_bit);

// Execute

Register_Bank RegB1(clk2, ALUresult, reset, en, sel_1, sel_2, OP0, OP1); // Load up the output values

ALU ALU_block(OP0, OP1, shift_bit, opcode, ALUresult, flags, insta);

assign result = ALUresult;

endmodule
