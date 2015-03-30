module test_fixture;
//the test will fail for numbers whose multiplication will create an overflow
//since result is only n bits for nxn multiplication.
reg clock;
reg [47:0] inst_a,inst_b;
initial
begin
	clock = 0;
#10         inst_a=48'b001011101111000010100011001011101111000010100011;
	    inst_b=48'b001011101111000010100011001011101111000010100011;

end
always #5 clock = ~clock;
mlt_cplx u1(inst_a,inst_b,op,clock);
endmodule
