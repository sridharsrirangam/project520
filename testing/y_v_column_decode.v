module y_v_column_decode(y_header,v_ram_no,v_column);
input [15:0] y_header;
output [1:0] v_ram;
output [8:0] v_column;

assign v_ram_no= y_header[1:0];
assign v_column = y_header[10:2];
endmodule

