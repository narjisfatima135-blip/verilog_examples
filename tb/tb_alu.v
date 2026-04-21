module tb_alu;

reg [3:0] a, b;
reg [2:0] sel;
wire [7:0] y;

alu uut (.a(a), .b(b), .sel(sel), .y(y));

initial begin
a = 4'b0011; b = 4'b0001;

sel = 3'b000; #10;
sel = 3'b001; #10;
sel = 3'b010; #10;
sel = 3'b011; #10;

$finish;
end

endmodule
