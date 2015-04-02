module test_fixture;
//the test will fail for numbers whose multiplication will create an overflow
//since result is only n bits for nxn multiplication.
parameter sig_width = 17;
parameter exp_width = 6;
parameter ieee_compliance = 1;

reg [sig_width+exp_width : 0] inst_a;
reg [sig_width+exp_width : 0] inst_b;
//reg [2 : 0] inst_rnd;
//reg [sig_width+exp_width : 0] z_inst;
reg clock,reset;
wire [sig_width+exp_width :0] z_inst;
wire [7:0] status;
initial
begin
clock=0;
#10 reset=0;

	#10 inst_a=48'b001011101111000010100011001011101111000010100011;
	    inst_b=48'b101011101111000010100011001011101111000010100011;
	   // inst_rnd = 3'b000;
#10 reset=1;
end
always #5 clock=~clock;
DW_fp_mult_pipe_inst u1( inst_a, inst_b,z_inst,clock,status,reset);
endmodule
