module test_fixture;
//the test will fail for numbers whose multiplication will create an overflow
//since result is only n bits for nxn multiplication.
reg clock;
reg [23:0] inst_a,inst_b;
initial
begin
	clock = 0;
#10         inst_a=24'b001011101111000010100011;
	    inst_b=24'b001011101111000010100011;

end
always #5 clock = ~clock;
fp_add_24 u1(inst_a,inst_b,0,op,status);  
endmodule
