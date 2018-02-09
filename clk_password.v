module clk_password(out_1hz,clk);
output out_1hz;
input clk;
reg [27:0] count_reg = 0;
reg out_1hz = 1;

always @(posedge clk) 
begin
        begin
        if (count_reg < 7074999) 
            count_reg <= count_reg + 1;
        else
		    begin
            count_reg <= 0;
            out_1hz <= ~out_1hz;
          end
end
end
endmodule