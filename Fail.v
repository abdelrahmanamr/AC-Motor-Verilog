module Fail(out,in,clk);
output reg [27:0] out;
input in,clk;
always @(posedge clk)
begin
case(in)
1'bZ : out <= 28'b1111111111111111111111111111;// no input
1'b0 : out <= 28'b0001110000100011110011000111; // fail
1'b1 : out <= 28'b0001100000100000100100010010; // pass
endcase 
end 
endmodule