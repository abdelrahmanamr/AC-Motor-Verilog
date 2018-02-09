module counter(count,available,max,in2,in3,orgclk);
input in2,in3,orgclk;
output [2:0]max=3'b101;
output available;
reg available=1'b1;
reg[2:0] state;
reg [2:0] min=3'b000;
output reg[2:0] count=3'b000;
parameter S0=2'b00, S1=2'b01, S2=2'b10, S3=2'b11;
clk_generator(clk,orgclk);
always @(posedge clk)
begin
case(state)
S0:begin case({in3,in2})
2'b00:state=S0;
2'b01:state=S1;
2'b10:state=S2;
2'b11:state=S3;
endcase
end
S1:begin 
case({in3,in2})
2'b00:begin state=S0;if(count+1>max || count  == max)begin count=max;available=1'b0; end else begin count=count+1;available = 1'b1; end end
2'b01:state=S1;
2'b10:begin state=S2;if(count+1>max || count  == max)begin count=max;available=1'b0; end else begin count=count+1; available = 1'b1; end end
2'b11:state=S3;
endcase
end
S2:begin
case({in3,in2})
2'b00:begin state=S0;if(count-1<3'b000 || count==3'b000)begin count=3'b000 ;available = 1'b1;end else begin count=count-1; available = 1'b1 ;end end
2'b01:begin state=S1;if(count-1<3'b000 || count==3'b000)begin count=3'b000;available = 1'b1; end  else begin count=count-1; available = 1'b1; end end
2'b10:state=S2;
2'b11:state=S3;
endcase
end
S3:begin
case({in3,in2})
2'b00:state=S0;
2'b01:begin state=S1;if(count-1<3'b000 || count==3'b000)begin count=3'b000 ;available = 1'b1;end else begin count=count-1; available = 1'b1; end end
2'b10:begin state=S2;if(count+1>max || count==3'b100)begin count=max; available=1'b0; end  else begin count=count+1;end end
2'b11:state=S3;
endcase
end
endcase
end
endmodule