module top_with_mem(clock, reset, WEPin, WEAddress, idataWrite,
	topmem_out_iMem_data1_1,topmem_out_iMem_data1_2,topmem_out_iMem_data1_3,
          topmem_out_iMem_data1_4,topmem_out_iMem_data1_5,
	topmem_out_iMem_data2_1,topmem_out_iMem_data2_2,topmem_out_iMem_data2_3,
          topmem_out_iMem_data2_4,topmem_out_iMem_data2_5
      );

	input clock, reset,WEPin;
   input [239:0] idataWrite;
	input 	[7:0] 		WEAddress;


	output 	[47:0] 	topmem_out_iMem_data1_1,topmem_out_iMem_data1_2,topmem_out_iMem_data1_3,
                        topmem_out_iMem_data1_4,topmem_out_iMem_data1_5;
	output 	[47:0] 	topmem_out_iMem_data2_1,topmem_out_iMem_data2_2,topmem_out_iMem_data2_3,
                        topmem_out_iMem_data2_4,topmem_out_iMem_data2_5;
	
	
	wire 	[239:0] 		idata1;
	wire 	[239:0] 		idata2;
	wire 	[7:0] 		address1;
	wire 	[7:0] 		address2;
	
	top top_inst (	.clock(clock),  .reset(reset), 
	         .top_iMem_data1_1((idata1[47:0])),.top_iMem_data1_2(idata1[95:48]),
               .top_iMem_data1_3(idata1[143:96]),
                   .top_iMem_data1_4(idata1[191:144]),.top_iMem_data1_5(idata1[239:192]),
	         .top_iMem_data2_1((idata2[47:0])),.top_iMem_data2_2(idata2[95:48]),
               .top_iMem_data2_3(idata2[143:96]),
                  .top_iMem_data2_4(idata2[191:144]),.top_iMem_data2_5(idata2[239:192]),

	    .top_out_iMem_data1_1(topmem_out_iMem_data1_1) ,.top_out_iMem_data1_2(topmem_out_iMem_data1_2) ,
         .top_out_iMem_data1_3(topmem_out_iMem_data1_3) ,    .top_out_iMem_data1_4(topmem_out_iMem_data1_4) ,
            .top_out_iMem_data1_5(topmem_out_iMem_data1_5) ,
	    .top_out_iMem_data2_1(topmem_out_iMem_data2_1) ,.top_out_iMem_data2_2(topmem_out_iMem_data2_2) ,
         .top_out_iMem_data2_3(topmem_out_iMem_data2_3), .top_out_iMem_data2_4(topmem_out_iMem_data2_4) ,
            .top_out_iMem_data2_5(topmem_out_iMem_data2_5), 

				 .address1(address1), .address2(address2) 
			);


   i_sram i_mem(.clock(clock), .WE(WEPin), .WriteAddress(WEAddress),
         .ReadAddress1(address1), .ReadAddress2(address2), .WriteBus(idataWrite),
            .ReadBus1(idata1), .ReadBus2(idata2));	
/*
	MemGen_8_10 mem_inst (	.clock_wr(clock), .clock_rd1(clock), .clock_rd2(clock), 
	
							.wr_en(1'b1), .wr_addr(10'h0), .wr_data(8'h0), 
							
							.rd_en1(rd_en1), .rd_addr1(address1), .rd_data1(data1), 
							.rd_en2(rd_en2), .rd_addr2(address2), .rd_data2(data2) 
						
						);
*/
endmodule
