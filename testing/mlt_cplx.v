module mlt_cplx(in1,in2,op,clock);
parameter width=48;//tested for 8 bits..change per requirement
parameter msb =(width)/2;
parameter lsb =(width-2)/2;
input [width-1 :0] in1,in2;
input clock;
output reg [(width-1) :0] op;
wire [(width-2)/2 :0] m_r_t,m_i_t;
wire [(width-2)/2 :0] in1_r,in1_i,in2_r,in2_i;
wire [(width-2)/2 :0] m_rr,m_ii,m_ri,m_ir;
//wire [7:0] status1,status2,status3,status4,status5,status6;
assign in1_r=in1[width-1:msb];
assign in1_i=in1[lsb:0];
assign in2_r=in2[width-1:msb];
assign in2_i=in2[lsb:0];

DW_fp_mult_inst m1(in1_r,in2_r,m_rr);
DW_fp_mult_inst m2(in1_i,in2_i,m_ii);
DW_fp_mult_inst m3(in1_r,in2_i,m_ri);
DW_fp_mult_inst m4(in1_i,in2_r,m_ir);
fp_addsub_24 m5(m_rr,m_ii,1'b1,m_r_t);
fp_addsub_24 m6(m_ri,m_ir,1'b0,m_i_t); 

always@(posedge clock)
	op = {m_r_t,m_i_t};

endmodule
