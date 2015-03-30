module addsub_cplx(in1,in2,mode,op);
parameter width = 48;
parameter msb=(width)/2;
parameter lsb = (width-2)/2;
input [(width-1):0] in1,in2;
input mode;
output [width-1 :0]op;
wire [7:0] status1,status2;
fp_addsub_24 Addr_r(in1[width-1 :msb],in2[width-1 :msb],mode,op[width-1: msb],clock,status1);
fp_addsub_24 Addr_i(in1[lsb:0],in2[lsb:0],mode,op[lsb:0],clock,status2);
endmodule
