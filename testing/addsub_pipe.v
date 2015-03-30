   // synopsys translate_off
`include "/afs/eos.ncsu.edu/dist/synopsys2013/syn/dw/sim_ver/DW_fp_addsub.v"

     //synopsys translate_on
module fp_addsub_24(in1,in2,mode,opt,clock,status);
parameter sig_width = 17;
parameter exp_width = 6;
parameter ieee_compliance = 1;
input [sig_width+exp_width : 0] in1;
input [sig_width+exp_width: 0] in2;
output [sig_width+exp_width :0]opt;
output [7:0] status;
input mode,clock;
reg   [sig_width+exp_width : 0] z_inst_pipe1, z_inst_pipe2, z_inst_pipe3;
wire  [sig_width+exp_width : 0] z_inst_internal;

reg   [7 : 0] status_inst_pipe1, status_inst_pipe2, status_inst_pipe3;
wire [7:0] status_inst_internal;

    DW_fp_addsub #(sig_width, exp_width, ieee_compliance)
	  U1 ( .a(in1), .b(in2), .rnd(3'b000), .op(mode), .z(z_inst_internal), .status(status_inst_internal));
always@(posedge clock)
begin

    z_inst_pipe1 <= z_inst_internal;
    z_inst_pipe2 <= z_inst_pipe1;
    z_inst_pipe3 <= z_inst_pipe2;
   

    status_inst_pipe1 <= status_inst_internal;
    status_inst_pipe2 <= status_inst_pipe1;
    status_inst_pipe3 <= status_inst_pipe2;

end

assign opt=z_inst_pipe3;
assign status=status_inst_pipe3;
endmodule



