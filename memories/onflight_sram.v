`timescale 1ns/100ps
// 65nm sram model
// size = 1kB, 2 read port, 2 write port, size = 256bit, @400K
// read data delay: 0.5ns.... To be the worst pessimistic...
// You can use it to store some intermediate values, or simply as the register files
// Save quite some area and power in this case, although slightly at the cost of delay....


module onflight_sram (clock, WE, WriteAddress1, WriteAddress2, ReadAddress1, ReadAddress2, WriteBus1, WriteBus2, ReadBus1, ReadBus2);
input  clock, WE; 
input  [4:0] WriteAddress1, WriteAddress2, ReadAddress1, ReadAddress2; // Change as you change size of SRAM
input  [255:0] WriteBus1, WriteBus2;
output [255:0] ReadBus1, ReadBus2;

reg [255:0]   Register [0:31];   // 256*1800 bits (i.e. a  57.6 kB) 
reg [255:0] ReadBus1, ReadBus2;

// provide one write enable line per register
reg [31:0] WElines1, WElines2;
integer i;

// Write '1' into write enable line for selected register
// Note the 0.5 ns delay - THIS IS THE INPUT DELAY FOR THE MEMORY FOR SYNTHESIS
always@(*)	begin
#0.5 WElines1 = (WE << WriteAddress1);
	 WElines2 = (WE << WriteAddress2);
end
// Learn how to set the specific delay on this single port....

always@(posedge clock)	begin
    for (i=0; i<32; i=i+1)	begin
      if (WElines1[i]) Register[i] <= WriteBus1;
	  if (WElines2[i]) Register[i] <= WriteBus2;
	end
end  

// Note the 0.5 ns delay - this is the OUTPUT DELAY FOR THE MEMORY FOR SYNTHESIS
always@(*) 
  begin 
    #0.5   ReadBus1  =  Register[ReadAddress1];
		   ReadBus2  =  Register[ReadAddress2];
  end
endmodule
