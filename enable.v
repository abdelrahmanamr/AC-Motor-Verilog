module enable(passwordcheck,counter,out,clk1);
output out;
input passwordcheck,counter,clk1;
reg out;
clk_generator(clk,clk1);
always @(posedge clk)
begin
case({passwordcheck,counter})
2'b00:out=1'b0;
2'b01:out=1'b0;
2'b10:out=1'b0;
2'b11:out=1'b1;
endcase
end 
endmodule 