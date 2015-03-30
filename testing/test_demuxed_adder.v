module test_fixture;
reg reset,sel,clock;
reg [47:0] in;
wire [47:0] sum1,sum2;
initial
begin
clock=0;
sel=1'b0;
reset=1'b0;

#10 in=48'b001011101111000010100011_00101110111100001010000;
#10 reset=1'b1;
#30 sel=1'b1;
#30 sel=1'b0;
end
always #5 clock = ~clock;
demuxed_adder u1(in,sum1,sum2,sel,clock,reset);
endmodule
