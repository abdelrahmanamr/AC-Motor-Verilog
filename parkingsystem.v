module parkingsystem(passwordin,sensor1in,sensor2in,sensor3in,sensor4in,clk,motor1out,motor2out,counterout,passwordout,maxout,enableout);
output[6:0] maxout;
output enableout;
input [4:0]passwordin;
input sensor1in,sensor2in,sensor3in,sensor4in,clk;
wire outsensor1,outsensor2,outsensor3,outsensor4,passwordcheck;
output  [1:0] motor1out,motor2out;
wire  counterout1;
wire [2:0]max , cout;
output  [6:0]counterout;
output  [27:0] passwordout; 
sensor(sensor1in,outsensor1);
sensor(sensor2in,outsensor2);
sensor(sensor3in,outsensor3);
sensor(sensor4in,outsensor4);
FSM(passwordcheck,passwordout,passwordin,clk);
counter(cout,counterout1,max,sensor1in,sensor4in,clk);
seven_segment_decoder(cout,counterout);
enable(passwordcheck,counterout1,enableout,clk);
seven_segment_decoder(max,maxout);
motorout(motor2out,{outsensor4,outsensor3},clk);
motor(motor1out,{outsensor2,outsensor1},clk);
endmodule


 