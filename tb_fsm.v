module tb_fsm;

reg clk, rst, in;
wire out;

fsm uut (.clk(clk), .rst(rst), .in(in), .out(out));

// clock generation
always #5 clk = ~clk;

initial begin
clk = 0; rst = 1; in = 0;

#10 rst = 0;

#10 in = 1;
#10 in = 1;
#10 in = 0;
#10 in = 1;
#10 in = 1;

#20 $finish;
end

endmodule
