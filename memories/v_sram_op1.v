`timescale 1ns/100ps
// 65nm sram model
// size = 12kb, 2 read port, 2 write port, size = 192bit, @400K
// read data delay: 1.5ns.... To be the worst pessimistic...
// 

module v_sram_op1 (clock, WE, WriteAddress1, WriteAddress2, ReadAddress1, ReadAddress2, WriteBus1, WriteBus2, ReadBus1, ReadBus2);
input  clock, WE; 
input  [8:0] WriteAddress1, WriteAddress2, ReadAddress1, ReadAddress2; // Change as you change size of SRAM
input  [191:0] WriteBus1, WriteBus2;
output [191:0] ReadBus1;
output [191:0] ReadBus2;

reg [191:0]   Register [0:511];   // 192*512 bits (i.e. a  12 kB) 
reg [191:0]   ReadBus1, ReadBus2;

// provide one write enable line per register
reg [511:0] WElines1, WElines2;
integer i;

// Write '1' into write enable line for selected register
// Note the 1.5 ns delay - THIS IS THE INPUT DELAY FOR THE MEMORY FOR SYNTHESIS
always@(*)	begin
#1.5 WElines1 = (WE << WriteAddress1);
	 WElines2 = (WE << WriteAddress2);
end

always@(posedge clock)	begin
    for (i=0; i<512; i=i+1)	begin
      if (WElines1[i]) Register[i] <= WriteBus1;
	  if (WElines2[i]) Register[i] <= WriteBus2;
	end
end  

// Note the 1.5 ns delay - this is the OUTPUT DELAY FOR THE MEMORY FOR SYNTHESIS
always@(*) 
  begin 
    #1.5   ReadBus1  =  Register[ReadAddress1];
    	 ReadBus2  =  Register[ReadAddress2];
  end
endmodule
