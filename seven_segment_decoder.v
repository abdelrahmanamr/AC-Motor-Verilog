module  seven_segment_decoder(num,segments); 
input[2:0]num; 
output[6:0]segments; 
reg [6:0]  segments; 
always@(num) 
begin 
 case (num) 
3'b000:   segments =  ~7'b0111111;   
3'b001:   segments =  ~7'b0000110; 
3'b010:   segments =  ~7'b1011011;   
3'b011: segments   =  ~7'b1001111;   
3'b100:   segments =  ~7'b1100110;    
3'b101: segments   =  ~7'b1101101;  
default:    segments= ~7'b0111111;   
 endcase 
end 
endmodule 
