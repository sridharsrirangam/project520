module test_fixture;
//the test will fail for numbers whose multiplication will create an overflow
//since result is only n bits for nxn multiplication.
reg clock,reset;
reg [23:0] inst_a,inst_b;
reg enable;
wire [23:0] op;
wire [7:0] status;
initial
begin
	clock = 0;
#10 reset =0;
#10       reset=1;
#2  inst_a=24'b001011101111000010100011;
	    inst_b=24'b001011101111000010100011;
#5 enable=1;
end
always #5 clock = ~clock;
fp_addsub_24 u1(inst_a,inst_b,0,op,clock,reset,status,enable,done_flag);  
endmodule
