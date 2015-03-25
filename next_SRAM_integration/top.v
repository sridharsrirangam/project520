module top (clock ,
       reset ,
	    top_iMem_data1_1 ,top_iMem_data1_2 ,top_iMem_data1_3 ,
        top_iMem_data1_4 ,top_iMem_data1_5 ,
	    top_iMem_data2_1 ,top_iMem_data2_2 ,top_iMem_data2_3 ,
         top_iMem_data2_4 ,top_iMem_data2_5 ,
	    top_out_iMem_data1_1,top_out_iMem_data1_2,top_out_iMem_data1_3,
           top_out_iMem_data1_4,top_out_iMem_data1_5,
	    top_out_iMem_data2_1,top_out_iMem_data2_2,top_out_iMem_data2_3,
           top_out_iMem_data2_4,top_out_iMem_data2_5,
	    address1 ,
	    address2 
	   );
	   
	   
	input clock;
	input	reset;
	
	
	input 	[47:0] 	top_iMem_data1_1,top_iMem_data1_2,top_iMem_data1_3,
                        top_iMem_data1_4,top_iMem_data1_5;
	input 	[47:0] 	top_iMem_data2_1,top_iMem_data2_2,top_iMem_data2_3,
                        top_iMem_data2_4,top_iMem_data2_5;


	output 	[47:0] 	top_out_iMem_data1_1,top_out_iMem_data1_2,
                        top_out_iMem_data1_3, top_out_iMem_data1_4,
                            top_out_iMem_data1_5;
	output 	[47:0] 	top_out_iMem_data2_1,top_out_iMem_data2_2,
                        top_out_iMem_data2_3, top_out_iMem_data2_4,
                           top_out_iMem_data2_5;
	
	output 	[7:0] 	address1;
	output 	[7:0] 	address2;
	
	

	Engine Data1 (.clock(clock), .reset(reset),
	    .eng_iMem_data1_1(top_iMem_data1_1) ,.eng_iMem_data1_2(top_iMem_data1_2) ,
         .eng_iMem_data1_3(top_iMem_data1_3) ,    .eng_iMem_data1_4(top_iMem_data1_4) ,
            .eng_iMem_data1_5(top_iMem_data1_5) ,
	    .eng_iMem_data2_1(top_iMem_data2_1) ,.eng_iMem_data2_2(top_iMem_data2_2) ,
         .eng_iMem_data2_3(top_iMem_data2_3) ,    .eng_iMem_data2_4(top_iMem_data2_4) ,
            .eng_iMem_data2_5(top_iMem_data2_5), 

	    .out_eng_iMem_data1_1(top_out_iMem_data1_1) ,.out_eng_iMem_data1_2(top_out_iMem_data1_2) ,
         .out_eng_iMem_data1_3(top_out_iMem_data1_3) ,    .out_eng_iMem_data1_4(top_out_iMem_data1_4) ,
            .out_eng_iMem_data1_5(top_out_iMem_data1_5) ,
	    .out_eng_iMem_data2_1(top_out_iMem_data2_1) ,.out_eng_iMem_data2_2(top_out_iMem_data2_2) ,
         .out_eng_iMem_data2_3(top_out_iMem_data2_3) ,    .out_eng_iMem_data2_4(top_out_iMem_data2_4) ,
            .out_eng_iMem_data2_5(top_out_iMem_data2_5) 
       );
/*
	Engine Data1 (.clock(clock), .reset(reset), .new(new), .search(search), .Found(Found1), .NotFound(NotFound1),
		     .data(data1), .ETX(ETX1),  .match(match1), .sp(sp1), .CharCount(CharCount1));
*/	
	
	Controller Ctrl (	.clock(clock),  .reset(reset), 
					.Address1(address1), .Address2(address2) 
					);

endmodule

