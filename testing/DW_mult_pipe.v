//synopsys translate_off
`include "/afs/eos.ncsu.edu/dist/synopsys2013/syn/dw/sim_ver/DW_fp_mult.v"
//synopsys translate_on
module DW_fp_mult_pipe_inst( inst_a, inst_b,z_inst,clock,status,reset);

parameter sig_width = 17;
parameter exp_width = 6;
parameter ieee_compliance = 1;


input [sig_width+exp_width : 0] inst_a;
input [sig_width+exp_width: 0] inst_b;
//input [2 : 0] inst_rnd;
input clock,reset;
output [sig_width+exp_width: 0] z_inst;
output [7 : 0] status;
reg   [sig_width+exp_width : 0] z_inst_pipe1, z_inst_pipe2, z_inst_pipe3,z_inst_pipe4;
wire  [sig_width+exp_width : 0] z_inst_internal;

reg   [7 : 0] status_inst_pipe1, status_inst_pipe2, status_inst_pipe3,status_inst_pipe4;
wire [7:0] status_inst_internal;


    // Instance of DW_fp_mult
    DW_fp_mult #(sig_width, exp_width, ieee_compliance)
          U1 ( .a(inst_a), .b(inst_b), .rnd(3'b000), .z(z_inst_internal), .status(status_inst_internal) );
always@(posedge clock)
begin
if(!reset)
begin

    z_inst_pipe1 <= 24'b0;
    z_inst_pipe2 <= 24'b0;
    z_inst_pipe3 <= 24'b0;
    z_inst_pipe4 <= 24'b0;
   

    status_inst_pipe1 <= 8'b0;
    status_inst_pipe2 <= 8'b0;
    status_inst_pipe3 <= 8'b0;
    status_inst_pipe4 <= 8'b0;
end
else
begin

    z_inst_pipe1 <= z_inst_internal;
    z_inst_pipe2 <= z_inst_pipe1;
    z_inst_pipe3 <= z_inst_pipe2;
    z_inst_pipe4 <= z_inst_pipe3;

    status_inst_pipe1 <= status_inst_internal;
    status_inst_pipe2 <= status_inst_pipe1;
    status_inst_pipe3 <= status_inst_pipe2;
    status_inst_pipe4 <= status_inst_pipe3;
end
end
assign z_inst=z_inst_pipe4;
assign status=status_inst_pipe4;
endmodule
