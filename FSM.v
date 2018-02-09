module FSM(out,outscreen,in,clk);
output out;
input clk;
input [4:0] in;
output reg[27:0] outscreen;
reg out;
always @(posedge clk)
begin
case(in)
5'b00111:begin out=1'b0;outscreen= 28'b0001110000100011110011000111;end
5'b01110:begin out=1'b0;outscreen= 28'b0001110000100011110011000111;end
5'b11100:begin out=1'b0;outscreen= 28'b0001110000100011110011000111;end
5'b11001:begin out=1'b0;outscreen= 28'b0001110000100011110011000111;end
5'b11010:begin out=1'b0;outscreen= 28'b0001110000100011110011000111;end
5'b01101:begin out=1'b0;outscreen= 28'b0001110000100011110011000111;end
5'b10011:begin out=1'b0;outscreen= 28'b0001110000100011110011000111;end
5'b10110:begin out=1'b0;outscreen= 28'b0001110000100011110011000111;end
5'b10101:begin out=1'b1;outscreen= 28'b0001100000100000100100010010;end
5'b01011:begin out=1'b0;outscreen= 28'b0001110000100011110011000111;end 
default:begin out=1'b0;outscreen= 28'b1111111111111111111111111111; end
endcase
end 
endmodule