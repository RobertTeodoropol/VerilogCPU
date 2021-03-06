module CPU_TestBeench;
reg clk1, clk2, reset;
reg [15:0] insta;
wire [15:0] result;


initial
begin
 $monitor($time, " result= %b", result);
end

initial begin
$readmemh("data.txt", MUT.Fetch.ROM.mem);
end

initial
begin
$display("Test my CPU");
 clk1=0; clk2=0;
 reset=1;
#3 reset=0;
#4 reset=1;
insta = 16'hAA;
#23 insta = 16'h22;

end

always 
begin
#10 clk1=~clk1;
end

always 
begin
#14 clk2=~clk2;
end
CPU MUT(clk1, clk2, reset, result, insta);
endmodule



