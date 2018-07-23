module rom_project (oeb, data, address);
	parameter Awidth = 4, Dwidth = 16;	
	input oeb;
	output [Dwidth-1:0] data; // data bus is read only
	input [Awidth-1:0] address;
	localparam Length = (1 << Awidth);
	reg [Dwidth-1:0] mem[0:7]; //memory array
	assign data = (oeb == 1'b0) ? mem [address] :'bz;
endmodule 


