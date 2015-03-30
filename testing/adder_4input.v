  
`include "/afs/eos.ncsu.edu/dist/synopsys2013/syn/dw/sim_ver/DW_fp_addsub.v"

  
module fp_addsub_24(in1,in2,mode,opt);
parameter sig_width = 17;
parameter exp_width = 6;
parameter ieee_compliance = 1;
input [sig_width+exp_width : 0] in1;
input [sig_width+exp_width: 0] in2;
output [sig_width+exp_width :0]opt;
wire [7:0] status;
input mode;
    DW_fp_addsub #(sig_width, exp_width, ieee_compliance)
	  U1 ( .a(in1), .b(in2), .rnd(3'b000), .op(mode), .z(opt), .status(status));

endmodule



