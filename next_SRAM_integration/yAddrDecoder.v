module yAddrDecodr(clock, reset, 
      yAD_readAddr1, yAD_readAddr2, 
      yAD_readRow, yAD_readCol, 
      yAD_outAddr1, yAD_outAddr2
      );
input clock,reset;

input [10:0] yAD_readAddr1,yAD_readAddr2;
