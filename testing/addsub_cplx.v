module addsub_cplx(in1,in2,mode,op,clock,reset,enable,done_flag);
parameter width = 48;
parameter msb=(width)/2;
parameter lsb = (width-2)/2;
input [(width-1):0] in1,in2;
input mode,clock,reset,enable;
output [width-1 :0]op;
output done_flag;
wire [1:0] done_temp;
wire [7:0] status1,status2;
fp_addsub_24 Addr_r(in1[width-1 :msb],in2[width-1 :msb],mode,op[width-1: msb],clock,reset,status1,enable,done_temp[0]);
fp_addsub_24 Addr_i(in1[lsb:0],in2[lsb:0],mode,op[lsb:0],clock,reset,status2,enable,done_temp[1]);
done_flag_tester dft1(done_temp,done_flag);
endmodule
