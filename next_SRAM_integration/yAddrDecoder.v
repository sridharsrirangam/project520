module yAddrDecodr(clock, reset, 
      yAD_readRow,
      yAD_readAddr1, yAD_readAddr2, 
      yAD_outAddr1, yAD_outAddr2,
      yAD_readData
      );
input clock,reset;
input [10:0] yAD_readAddr1,yAD_readAddr2;
input [10:0] yAD_readRow;
input [255:0] yAD_readRowData;

output [10:0] yAD_outAddr1,yAD_outAddr2;


reg [10:0] yAD_outAddr1,yAD_outAddr2;

wire [10:0] wire_outAddr1; 

always@(posedge clock or reset)
begin
   if(!reset)
   begin
      
   casex({(|yAD_readAddr1),(|yAD_readAddr2)})
   2'd0: yAD_outAddr1 = (yAD_readRow>>4);
         yAD_outAddr2 = 11'd0;
   2'd1: yAD_outAddr1 = 11'bz;
         yAD_outAddr2 = 11'dz;
   2'd3: yAD_outAddr1 = yAD_readAddr1;
         yAD_outAddr2 = yAD_readAddr2;
   2'd2: yAD_outAddr1 = wire_outAddr1;
         yAD_outAddr2 = wire_outAddr1 + 1; //adder module
   default: yAD_outAddr1 = 11'bz; // Should never come here
            yAD_outAddr2 = 11'dz;
   endcase
end


getYMatAddress getActualRowAddr(.gYMA_row(yAD_readRow), .gYMA_readData(yAD_readRowData),
                        .gYMA_row_addr1(wire_outAddr1));//, gYMA_row_addr2 );
