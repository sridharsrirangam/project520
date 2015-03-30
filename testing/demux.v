
module demuxed_adder(in,sum1,sum2,adder_sel,clock,reset);
parameter width=48 ;
input [width-1:0]in;
input adder_sel,clock,reset;
output reg [width-1 :0] sum1,sum2;
wire [width-1 :0] sum1_t,sum2_t;
reg [width-1 :0] in_addr1,in_addr2;
always@(*)

	begin
	in_addr1=48'b0;
	in_addr2=48'b0;
		if(!adder_sel)
			begin
			in_addr1=in;
			end
		else
			begin
			in_addr2=in;
			
			end
	end


addsub_cplx Adder1(.in1(in_addr1),.in2(sum1),.mode(1'b0),.op(sum1_t));
addsub_cplx Adder2(.in1(in_addr2),.in2(sum2),.mode(1'b0),.op(sum2_t));

always@(posedge clock or negedge reset)	
	begin
	if(!reset)
		begin
		sum1<=0;
		sum2<=0;
	end
        else
		begin
		sum1<=sum1_t;
		sum2<=sum2_t;
		end
	end


endmodule
 
