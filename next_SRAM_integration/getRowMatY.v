module getYMatRow(clock, reset, 
      gYMR_row_in, gYMR_row_addr //cIYM_col,// cIYM_real, cIYM_img, //inputs
      );

input clock,reset;

input [15:0] gYMR_row_in;
output [10:0] gYMR_row_addr;

reg [15:0] gYMR_row_out;
//input [] cIYM_real, cIYM_img;
//
//wire 

always@(posedge clock)
begin
  if(!reset)
  begin
      gYMR_row_out <= 11'd0;
  end
  else
   begin
   gYMR_row_out <= (gYMR_row_in>>4); //Divide by 16 or 2^4 
  end
end //always@

endmodule


