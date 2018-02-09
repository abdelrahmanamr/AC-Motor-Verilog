module sensor(in,out);
output out;
input in;
reg out;
always @(in)
begin
case(in)
1'b0:out=1'b0;
1'b1:out=1'b1;
endcase 
end
endmodule
