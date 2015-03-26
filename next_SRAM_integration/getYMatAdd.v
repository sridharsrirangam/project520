/* Module that gets Y Matrix Read Addresses */

module getYMatAddress(//clock, reset, 
                  gYMA_row, gYMA_readData, gYMA_row_addr1);//, gYMA_row_addr2 );

//input clock,reset;
input [15:0] gYMA_row;
input [255:0] gYMA_readData;

output [10:0] gYMA_row_addr1;
//output [10:0] gYMA_row_addr2;

reg [10:0] gYMA_row_addr1;
//reg [10:0] gYMA_row_addr2;


always@(gYMA_row)
begin
   casex((gYMA_row[15:0]))
   16'd1: gYMA_row_addr1 = gYMA_readData[249:240];
   16'd2: gYMA_row_addr1 = gYMA_readData[233:224];
   16'd3: gYMA_row_addr1 = gYMA_readData[217:208];
   16'd4: gYMA_row_addr1 = gYMA_readData[201:192];
   16'd5: gYMA_row_addr1 = gYMA_readData[185:176];
   16'd6: gYMA_row_addr1 = gYMA_readData[169:160];
   16'd7: gYMA_row_addr1 = gYMA_readData[153:144];
   16'd8: gYMA_row_addr1 = gYMA_readData[137:128];
   16'd9: gYMA_row_addr1 = gYMA_readData[121:112];
   16'd10: gYMA_row_addr1 = gYMA_readData[105:96];
   16'd11: gYMA_row_addr1 = gYMA_readData[89:80];
   16'd12: gYMA_row_addr1 = gYMA_readData[73:64];
   16'd13: gYMA_row_addr1 = gYMA_readData[57:48];
   16'd14: gYMA_row_addr1 = gYMA_readData[41:32];
   16'd15: gYMA_row_addr1 = gYMA_readData[25:16];
   16'd0:  gYMA_row_addr1 = gYMA_readData[9:0]; //since this is the last row
   default: gYMA_row_addr1 = 11'b0;
   endcase
end //always@ block 

/*
always@(posedge clock or reset)
begin
   if(!reset)
   begin
      gYMA_row_addr1 <= 11'd0;
      gYMA_row_addr2 <= 11'd0;
   end
   else
   begin
      gYMA_row_addr1 <= temp_addr1;
      gYMA_row_addr2 <= (temp_addr1 + 1);
   end
end//always@
*/

endmodule
