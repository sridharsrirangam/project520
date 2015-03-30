module test_fixture;
reg [47:0] in1,in2;
reg mode;
initial
begin
 
#10         in1=48'b001011101111000010100011_00101110111100001010000;
            in2=48'b001011101111000010100011_00101110111100001010000;
mode=1'b0;
end
addsub_cplx u1(in1,in2,mode,op);
endmodule
