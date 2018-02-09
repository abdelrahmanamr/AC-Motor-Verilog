//module FSM(out,outscreen,in,clk);
//output out;
//input clk;
//input [3:0] in;
//output reg[27:0] outscreen;
//reg out;
//reg[2:0] state;
//parameter S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011, S4=3'b100, S5=3'b101 ,S6=3'b110,S7=3'b111;
//always @(posedge clk)
//begin
//	case(state)
//		S0:if(in==4'b0111) state =S1; else state =S4;
//		S1:if(in==4'b1011) state =S2; else state =S5;
//		S2:if(in==4'b1101) state =S3; else state =S6;
//		S3:state =S0;
//		S4:state =S5;
//		S5:state =S6;
//		S6:state =S0;
//		S7:state =S0;
//		default:state =S0;
//	endcase
//end

//always @(state or in)
//begin
//	case(state)
//		S0:outscreen = 28'b1111111111111111111111111111;
//		S1:outscreen = 28'b1111111111111111111111111111;
//		S2:outscreen = 28'b1111111111111111111111111111;
//		S3:if(in==4'b1110) begin out =1'b1; outscreen=28'b0001100000100000100100010010;end else begin out =1'b0; outscreen= 28'b0001110000100011110011000111;end
///		S4:outscreen = 28'b1111111111111111111111111111;
///		S5:outscreen = 28'b1111111111111111111111111111;
///		S6:outscreen = 28'b1111111111111111111111111111;
///		S7:outscreen = 28'b1111111111111111111111111111;
///		default:out = 1'b0;
///	endcase
//end

//endmodule