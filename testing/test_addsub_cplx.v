module test_fixture;
reg [47:0] in1,in2;
reg mode;
reg reset,enable,clock;
initial
begin
clock=0;
 #10 reset=0;
#10 reset=1;
#10      enable=1;
   in1=48'b001011101111000010100011_00101110111100001010000;
            in2=48'b001011101111000010100011_00101110111100001010000;
mode=1'b0;
end
always #5 clock=~clock;
addsub_cplx u1(in1,in2,mode,op,clock,reset,enable,done_flag);
endmodule
