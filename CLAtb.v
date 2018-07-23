module CLAtb;
reg [3:0] y,x;
reg cin;

wire [3 : 0] p,g,c, s;
wire cout;

initial begin
y = 4'b0000;
x = 4'b0000;
cin = 0;
#2 y = 4'b0001; x = 4'b0000; 
#2 y = 4'b0001; x = 4'b0001; 
#2 y = 4'b0001; x = 4'b1111; 
end

initial
$monitor("x =%b , y = %b, cin = %b, c = %b, s = %b, cout = %b  ", x,  y, cin,  c,  s,  cout);

PGgenerator PG(x,y,p,g);
CLA CLAgen(g,p,cin,c,cout);
SUM Sumgen(c,p,s);

endmodule
