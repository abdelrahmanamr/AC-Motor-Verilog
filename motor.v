module motor(out,in,orgclk);
output [1:0] out;
input [1:0] in;
input orgclk;
reg[2:0]  state;  
parameter  S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011,S4=3'b100,S5=3'b101,S6=3'b110; 
reg [1:0] out;
clk_generator(clk,orgclk);
initial state = S0;
always @(posedge clk)
begin
case(state)
S0:begin
case(in)
2'b00:state = S0;
2'b01:state = S1;
2'b10:state = S3;
2'b11:state = S5;
endcase
end
  
S1:state = S2;

S2:begin
case(in)
2'b00:state = S0;
2'b01:state = S2;
2'b10:state = S3;
2'b11:state = S5;
endcase
end  

S3:state=S4;

S4:begin
case(in)
2'b00:state = S0;
2'b01:state = S1;
2'b10:state = S4;
2'b11:state = S5;
endcase
end  

S5:state=S6;

S6:begin
case(in)
2'b00:state = S0;
2'b01:state = S1;
2'b10:state = S3;
2'b11:state = S6;

default:state = S0;
endcase
end  

endcase 
end




always @ (state or in) begin
case (state)
S0:out=2'b00;
S1:out=2'b01;
S2:out=2'b00;
S3:out=2'b10;
S4:out=2'b10;
S5:out=2'b00;
S6:out=2'b00;
default:out=2'b00;
endcase
end
endmodule