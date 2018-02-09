module clk_generator(out_7hz,clk);
output out_7hz;
input clk;
reg [22:0] count_reg = 0;
reg out_7hz = 0;

always @(posedge clk) 
begin
        if (count_reg < 7074999) 
            count_reg <= count_reg + 1;
        else
		    begin
            count_reg <= 0;
            out_7hz <= ~out_7hz;
          end
end
endmodule