//`timescale 1ns/10ps
module Engine (clock, reset, 
	    eng_iMem_data1_1 ,eng_iMem_data1_2 ,eng_iMem_data1_3 ,
           eng_iMem_data1_4 ,eng_iMem_data1_5 ,
	    eng_iMem_data2_1 ,eng_iMem_data2_2 ,eng_iMem_data2_3 ,
           eng_iMem_data2_4 ,eng_iMem_data2_5, 
	 	out_eng_iMem_data1_1,out_eng_iMem_data1_2,out_eng_iMem_data1_3,
                        out_eng_iMem_data1_4,out_eng_iMem_data1_5,
	 	out_eng_iMem_data2_1,out_eng_iMem_data2_2,out_eng_iMem_data2_3,
                        out_eng_iMem_data2_4,out_eng_iMem_data2_5
		);


	input 			clock;
	input				reset; 
	input 	[47:0] 	eng_iMem_data1_1,eng_iMem_data1_2,eng_iMem_data1_3,
                        eng_iMem_data1_4,eng_iMem_data1_5;
	input 	[47:0] 	eng_iMem_data2_1,eng_iMem_data2_2,eng_iMem_data2_3,
                        eng_iMem_data2_4,eng_iMem_data2_5;

	output 	[47:0] 	out_eng_iMem_data1_1,out_eng_iMem_data1_2,out_eng_iMem_data1_3,
                        out_eng_iMem_data1_4,out_eng_iMem_data1_5;
	output 	[47:0] 	out_eng_iMem_data2_1,out_eng_iMem_data2_2,out_eng_iMem_data2_3,
                        out_eng_iMem_data2_4,out_eng_iMem_data2_5;

	reg [47:0] 	out_eng_iMem_data1_1,out_eng_iMem_data1_2,out_eng_iMem_data1_3,
                        out_eng_iMem_data1_4,out_eng_iMem_data1_5;
	reg [47:0] 	out_eng_iMem_data2_1,out_eng_iMem_data2_2,out_eng_iMem_data2_3,
                        out_eng_iMem_data2_4,out_eng_iMem_data2_5;

// Flip-flops


	// Note the following code.  It is a direct and ugly description
	// of a demux.  But being direct, it is likely to yield smaller
	// logic than a more elegant version
	
	always@(posedge clock) begin
		if (reset) begin 
         out_eng_iMem_data1_1 <= 0; 
         out_eng_iMem_data1_2 <= 0; 
         out_eng_iMem_data1_3 <= 0; 
         out_eng_iMem_data1_4 <= 0; 
         out_eng_iMem_data1_5 <= 0; 
         out_eng_iMem_data2_1 <= 0; 
         out_eng_iMem_data2_2 <= 0; 
         out_eng_iMem_data2_3 <= 0; 
         out_eng_iMem_data2_4 <= 0; 
         out_eng_iMem_data2_5 <= 0; 
		end
		else begin
         out_eng_iMem_data1_1 <= eng_iMem_data1_1; 
         out_eng_iMem_data1_2 <= eng_iMem_data1_2; 
         out_eng_iMem_data1_3 <= eng_iMem_data1_3; 
         out_eng_iMem_data1_4 <= eng_iMem_data1_4; 
         out_eng_iMem_data1_5 <= eng_iMem_data1_5; 
         out_eng_iMem_data2_1 <= eng_iMem_data2_1; 
         out_eng_iMem_data2_2 <= eng_iMem_data2_2; 
         out_eng_iMem_data2_3 <= eng_iMem_data2_3; 
         out_eng_iMem_data2_4 <= eng_iMem_data2_4; 
         out_eng_iMem_data2_5 <= eng_iMem_data2_5; 
	  	end
	end
	 
endmodule 

