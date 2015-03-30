module test_fixture;
parameter width=8;//tested for 8 bits..change per requirement
parameter msb =(width)/2;
parameter lsb =(width-2)/2;

reg [width-1 :0] in1,in2;
initial 
begin
#10 in1=8'hAA;in2=8'h55;
end

 mlt_cplx u1(in1,in2,op,clock,in1_r,in1_i,in2_r,in2_i);
endmodule

