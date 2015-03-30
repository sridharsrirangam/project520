module accum_pipe(input_YV,opt,sel_sum_cycle,clock,reset);

parameter width=48;
input [width-1 :0]input_YV;
output [width-1 :0] opt;
input clock,reset,sel_sum_cycle;
reg [width-1 :0] input_pipe1,input_pipe2,input_pipe3;
wire [width-1 :0]sum_internal_1,sum_internal_2,sum_feed,sum_accum;
always@(posedge clock or negedge reset)
begin
if(!reset)
begin
	input_pipe1<=48'b0;
	input_pipe2<=48'b0;
	input_pipe3<=48'b0;
end
else
begin
	input_pipe1<=input_YV;
	input_pipe2<=input_pipe1;
	input_pipe3<=input_pipe2;
end
end
addsub_cplx(input_YV,input_pipe1,1'b0,sum_internal_1);
addsub_cplx(input_pipe3,sum_internal_1,1'b0,sum_internal_2);
assign  sum_feed = sel_sum_cycle?48'b0:sum_feed;
addsub_cplx(sum_feed,sum_accum,1'b0,sum_accum);
assign opt = sum_accum;
endmodule


