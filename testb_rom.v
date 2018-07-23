module Test_ROM;
reg [3:0] address;
wire [15:0] data; //outputs wire

fetch MUT(address, data); 

initial begin
$readmemh("data.txt", MUT.ROM.mem);
end

initial
begin
$display($time, " Test My RoM");
      

#10 address=0; 
#10 address=1;
#10 address=2;
#10 address=3;
#10 address=4; 
#10 address=5;
#10 address=6;
#10 address=7;  
end

initial
begin
$monitor($time, "  address=%b, data=%h",  address, data);
end

endmodule


