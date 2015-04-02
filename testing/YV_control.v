/*************************************************************** 
* This module will control how to get corresponding V from a row of Y
* Once a Y row is read, read and store the column numbers of non zero elements.
* Based on these column numbers, V will have different states for control
* The maxinmum possible V we need in one fetch of Y is 4.
* State 1 : each V is in different sram. This is easy.
* State 2 : two of them in one sram, This is still managable as we have 2 read 
* ports on V sram.
* State 3 : three are on the same sram. In this state, we need to read two at 
* once,and the next one in the next cycle.
* State 4 : All are in same sram. Then we read two in 1 cycle, 2 in next.
***************************************************************/
module(v_ram_no,v_column);
input [2:0] v_ram_no_1, v_ram_no_2, v_ram_no_3, v_ram_no_4;
input [ :0] v_column_1, v_column_2, v_column_3, v_column_4,
reg [3:0] current_state,next_state;
reg [5:0] value;
output [1:0] op_ram_no_1,op_ram_no_2,op_ram_no_3,op_ram_no_4; //these will be used as flip-flop select lines.

reg [1:0] op_column_1,op_column_2,op_column_3,op_column_4;
reg [ :0] address_line_1,address_line_2;
output [ :0] sram_1_addressline_1,sram_1_addressline_2,
	     sram_2_addressline_1,sram_2_addressline_2,
	     sram_3_addressline_1,sram_3_addressline_2,
	     sram_4_addressline_1,sram_4_addressline_2;
reg fetched_x1,fetched_x2,fetched_x3,fetched_x4;
output done_elements_fetched;

assign x_1_2 = ((v_ram_no_1)===(v_ram_no_2));
assign x_1_3 = ((v_ram_no_1)===(v_ram_no_3));
assign x_1_4 = ((v_ram_no_1)===(v_ram_no_4));
assign x_2_3 = ((v_ram_no_2)===(v_ram_no_3));
assign x_2_4 = ((v_ram_no_2)===(v_ram_no_4));
assign x_3_4 = ((v_ram_no_3)===(v_ram_no_4));

assign value = {x_1_2,x_1_3,x_1_4,x_2_3,x_2_4,x_3_4}

always@(posedge clock)
begin
if(!reset)
current_state <= 4'b0;
else
current_state<=next_state;
end



always@(*) //assign all to 0 to prevent unintentional latches.
begin
next_state=0;
case(value)

always@(*)
begin
case(current_state)
//the following is the first state of the scenario where all are in samee sram.

4'd0:
    begin
    6'b111111: next_state=4'd1;//all are in same sram. send two in 1st cycle, send 2 in next cycle
    6'b110100: next_state=4'd3/x1,x2,x3 in one sram, x4 in other. fetch x1,x2,x4 in 1st cycle, x3 in next
    6'b101010: next_state=4'd5//x1,x2,x4 in one sram, x3 in other.
    6'b011001: next_state=4'd7//x1,x3,x4 in one sram, x2 in other.
    6'b000111: next_state=4'd8//x2,x3,x4 in one sram. x1 in other.
    default:   next_state=4'd9//rest all other cases, we just send the ram number and column values directly to  V sram. it can handle other cases.
    endcase



4'd1: 
    begin
    address_line_1=v_column_1;
    address_line_2=v_column_2;
    casex(v_ram_no_1)
	3'b000:begin 
		    sram_1_addressline_1=address_line_1; 
		    sram_1_addressline_2= address_line_2;
		end

	3'b001:begin
		    sram_2_addressline_1=address_line_1; 
		    sram_2_addressline_2= address_line_2;
		    end
	3'b010:begin 
		    sram_3_addressline_1=address_line_1;
		    sram_3_addressline_2= address_line_2;
		    end
	3'b011:begin 
		    sram_4_addressline_1=address_line_1;
		    sram_4_addressline_2= address_line_2;
		    end
    endcase
    next_state=4'd2;
end //end of case 1

4'd2: //this case continues fetch of the two elements left out in the same sram
    begin
    address_line_1=v_column_3;
    address_line_2=v_column_4;
     casex(v_ram_no_1)
	3'b000:begin 
		    sram_1_addressline_1=address_line_1; 
		    sram_1_addressline_2= address_line_2;
		end

	3'b001:begin
		    sram_2_addressline_1=address_line_1; 
		    sram_2_addressline_2= address_line_2;
		    end
	3'b010:begin 
		    sram_3_addressline_1=address_line_1;
		    sram_3_addressline_2= address_line_2;
		    end
	3'b011:begin 
		    sram_4_addressline_1=address_line_1;
		    sram_4_addressline_2= address_line_2;
		    end
    endcase
       next_state=4'd0;
       done_elements_fetched=1; //by this state, the condition that all elements are in same sram are fetched.
end//end of case 2


4'd3: //in this state, x1,x2,x3 are in one sram. x4 is in another. x1,x2 and x4 are fetched now, x3 in state 4
    begin
    address_line_1=v_column_1;
    address_line_2=v_column_2;
	casex(v_ram_no_1)

	3'b000:begin 
		    sram_1_addressline_1=address_line_1; 
		    sram_1_addressline_2= address_line_2;
		end

	3'b001:begin
		    sram_2_addressline_1=address_line_1; 
		    sram_2_addressline_2= address_line_2;
		    end
	3'b010:begin 
		    sram_3_addressline_1=address_line_1;
		    sram_3_addressline_2= address_line_2;
		    end
	3'b011:begin 
		    sram_4_addressline_1=address_line_1;
		    sram_4_addressline_2= address_line_2;
		    end
        endcase
	
	casex(v_ram_no_4)
	3'b000: sram_1_addressline_1=v_column_4; 
	3'b001: sram_2_addressline_1=v_column_4; 
	3'b010: sram_3_addressline_1=v_column_4; 
        3'b011: sram_4_addressline_1=v_column_4; 
	endcase

	next_state=4'd4;
    end//end of state 3


4'd4: //this is a continuation state of state 3, x3 is fetched.
    begin
    casex(v_ram_no_3)
	3'b000: sram_1_addressline_1=v_column_3; 
	3'b001: sram_2_addressline_1=v_column_3; 
	3'b010: sram_3_addressline_1=v_column_3; 
        3'b011: sram_4_addressline_1=v_column_3; 
        endcase
    done_elements_fetched=1 //all required elements are fetched by now
    next_state=4'b0;
    end //end of case 4

4'd5 : //this is a state where x1,x2,x4 in 1 sram, x3 in another.
 begin
    address_line_1=v_column_1;
    address_line_2=v_column_2;
	casex(v_ram_no_1)

	3'b000:begin 
		    sram_1_addressline_1=address_line_1; 
		    sram_1_addressline_2= address_line_2;
		end

	3'b001:begin
		    sram_2_addressline_1=address_line_1; 
		    sram_2_addressline_2= address_line_2;
		    end
	3'b010:begin 
		    sram_3_addressline_1=address_line_1;
		    sram_3_addressline_2= address_line_2;
		    end
	3'b011:begin 
		    sram_4_addressline_1=address_line_1;
		    sram_4_addressline_2= address_line_2;
		    end
        endcase
	
	casex(v_ram_no_3)
	3'b000: sram_1_addressline_1=v_column_3; 
	3'b001: sram_2_addressline_1=v_column_3; 
	3'b010: sram_3_addressline_1=v_column_3; 
        3'b011: sram_4_addressline_1=v_column_3; 
        endcase 
	next_state=4'd6;
    end//end of state 5

4'd6: //this is a continuation state of state 5, x4 is fetched.
    begin
    casex(v_ram_no_4)
	3'b000: sram_1_addressline_1=v_column_4; 
	3'b001: sram_2_addressline_1=v_column_4; 
	3'b010: sram_3_addressline_1=v_column_4; 
        3'b011: sram_4_addressline_1=v_column_4; 
        endcase
    done_elements_fetched=1 //all required elements are fetched by now
    next_state=4'b0;
    end //end of case 6


4'd7 : //this is a state where x1,x3,x4 in 1 sram, x2 in another.
 begin
    address_line_1=v_column_1;
    address_line_2=v_column_3;
	casex(v_ram_no_1)

	3'b000:begin 
		    sram_1_addressline_1=address_line_1; 
		    sram_1_addressline_2= address_line_2;
		end

	3'b001:begin
		    sram_2_addressline_1=address_line_1; 
		    sram_2_addressline_2= address_line_2;
		    end
	3'b010:begin 
		    sram_3_addressline_1=address_line_1;
		    sram_3_addressline_2= address_line_2;
		    end
	3'b011:begin 
		    sram_4_addressline_1=address_line_1;
		    sram_4_addressline_2= address_line_2;
		    end
        endcase
	
	casex(v_ram_no_2)
	3'b000: sram_1_addressline_1=v_column_2; 
	3'b001: sram_2_addressline_1=v_column_2; 
	3'b010: sram_3_addressline_1=v_column_2; 
        3'b011: sram_4_addressline_1=v_column_2; 
        endcase 
	next_state=4'd6;
end//end of state 7

4'd8 : //this is a state where x2,x3,x4 are in 1 sram, x1 in another.
 begin
    address_line_1=v_column_2;
    address_line_2=v_column_3;
	casex(v_ram_no_2)

	3'b000:begin 
		    sram_1_addressline_1=address_line_1; 
		    sram_1_addressline_2= address_line_2;
		end

	3'b001:begin
		    sram_2_addressline_1=address_line_1; 
		    sram_2_addressline_2= address_line_2;
		    end
	3'b010:begin 
		    sram_3_addressline_1=address_line_1;
		    sram_3_addressline_2= address_line_2;
		    end
	3'b011:begin 
		    sram_4_addressline_1=address_line_1;
		    sram_4_addressline_2= address_line_2;
		    end
        endcase
	
	casex(v_ram_no_1)
	3'b000: sram_1_addressline_1=v_column_1; 
	3'b001: sram_2_addressline_1=v_column_1; 
	3'b010: sram_3_addressline_1=v_column_1; 
        3'b011: sram_4_addressline_1=v_column_1; 
        endcase 
	next_state=4'd6;
    end//end of state 8




/*In the following  state, we shall assign states where the V values can be 2 in 1 ram or all in different ones.
* We use a single bit for each value of V. If this bit is 1, it means that Vn has been found and assigned in some case above.
* We use this bit in the end. If it is 0, then we write logic to fetch the corresponding Vn.
*/
4'd9 :
begin
    if(x_1_2)
	begin
	address_line_1=v_column_1;
	address_line_2=v_column_2;
        fetched_x1=1'b1;
	fetched_x2=1'b1;
	casex(v_ram_1)
	3'b000:begin 
		    sram_1_addressline_1=address_line_1; 
		    sram_1_addressline_2= address_line_2;
		end

	3'b001:begin
		    sram_2_addressline_1=address_line_1; 
		    sram_2_addressline_2= address_line_2;
		    end
	3'b010:begin 
		    sram_3_addressline_1=address_line_1;
		    sram_3_addressline_2= address_line_2;
		    end
	3'b011:begin 
		    sram_4_addressline_1=address_line_1;
		    sram_4_addressline_2= address_line_2;
		    end
        endcase
    end

    if(x_1_3)
	begin
	address_line_1=v_column_1;
	address_line_2=v_column_3;
        fetched_x1=1'b1;
	fetched_x3=1'b1;
	casex(v_ram_1)
	3'b000:begin 
		    sram_1_addressline_1=address_line_1; 
		    sram_1_addressline_2= address_line_2;
		end

	3'b001:begin
		    sram_2_addressline_1=address_line_1; 
		    sram_2_addressline_2= address_line_2;
		    end
	3'b010:begin 
		    sram_3_addressline_1=address_line_1;
		    sram_3_addressline_2= address_line_2;
		    end
	3'b011:begin 
		    sram_4_addressline_1=address_line_1;
		    sram_4_addressline_2= address_line_2;
		    end
        endcase
    end
    if(x_1_4)
	begin
	address_line_1=v_column_1;
	address_line_2=v_column_4;
        fetched_x1=1'b1;
	fetched_x4=1'b1;
	casex(v_ram_1)
	3'b000:begin 
		    sram_1_addressline_1=address_line_1; 
		    sram_1_addressline_2= address_line_2;
		end

	3'b001:begin
		    sram_2_addressline_1=address_line_1; 
		    sram_2_addressline_2= address_line_2;
		    end
	3'b010:begin 
		    sram_3_addressline_1=address_line_1;
		    sram_3_addressline_2= address_line_2;
		    end
	3'b011:begin 
		    sram_4_addressline_1=address_line_1;
		    sram_4_addressline_2= address_line_2;
		    end
        endcase
    end
    if(x_2_3)
	begin
	address_line_1=v_column_2;
	address_line_2=v_column_3;
        fetched_x2=1'b1;
	fetched_x3=1'b1;
	casex(v_ram_2)
	3'b000:begin 
		    sram_1_addressline_1=address_line_1; 
		    sram_1_addressline_2= address_line_2;
		end

	3'b001:begin
		    sram_2_addressline_1=address_line_1; 
		    sram_2_addressline_2= address_line_2;
		    end
	3'b010:begin 
		    sram_3_addressline_1=address_line_1;
		    sram_3_addressline_2= address_line_2;
		    end
	3'b011:begin 
		    sram_4_addressline_1=address_line_1;
		    sram_4_addressline_2= address_line_2;
		    end
	endcase
    end
    if(x_2_4)
	begin
	address_line_1=v_column_2;
	address_line_2=v_column_4;
        fetched_x2=1'b1;
	fetched_x4=1'b1;
	casex(v_ram_1)
	3'b000:begin 
		    sram_1_addressline_1=address_line_1; 
		    sram_1_addressline_2= address_line2;
		end

	3'b001:begin
		    sram_2_addressline_1=address_line_1; 
		    sram_2_addressline_2= address_line2;
		    end
	3'b010:begin 
		    sram_3_addressline_1=address_line_1;
		    sram_3_addressline_2= address_line2;
		    end
	3'b011:begin 
		    sram_4_addressline_1=address_line_1;
		    sram_4_addressline_2= address_line2;
		    end
        endcase
    end
    if(x_3_4)
	begin
	address_line_1=v_column_3;
	address_line_2=v_column_4;
        fetched_x3=1'b1;
	fetched_x4=1'b1;
	casex(v_ram_1)
	3'b000:begin 
		    sram_1_addressline_1=address_line_1; 
		    sram_1_addressline_2= address_line2;
		end

	3'b001:begin
		    sram_2_addressline_1=address_line_1; 
		    sram_2_addressline_2= address_line2;
		    end
	3'b010:begin 
		    sram_3_addressline_1=address_line_1;
		    sram_3_addressline_2= address_line2;
		    end
	3'b011:begin 
		    sram_4_addressline_1=address_line_1;
		    sram_4_addressline_2= address_line2;
		    end
        endcase
    end

 /*The following if staements will check the fetched bit of each X.
 *If it is 1, it means that it has been fetched before.
 * if it is zero, then it needs to be fetched.*/
   
   if(!fetched_x1)
    begin
	fetched_x1=1'b1;
    	casex(v_ram_no_1)
	3'b000: sram_1_addressline_1=v_column_1; 
	3'b001: sram_2_addressline_1=v_column_1; 
	3'b010: sram_3_addressline_1=v_column_1; 
        3'b011: sram_4_addressline_1=v_column_1; 
        endcase 
    end
    
    if(!fetched_x2)
    begin
	fetched_x2=1'b1;
    	casex(v_ram_no_2)
	3'b000: sram_1_addressline_1=v_column_2; 
	3'b001: sram_2_addressline_1=v_column_2; 
	3'b010: sram_3_addressline_1=v_column_2; 
        3'b011: sram_4_addressline_1=v_column_2; 
        endcase 
    end

    if(!fetched_x3)
    begin
	fetched_x3=1'b1;
    	casex(v_ram_no_3)
	3'b000: sram_1_addressline_1=v_column_3; 
	3'b001: sram_2_addressline_1=v_column_3; 
	3'b010: sram_3_addressline_1=v_column_3; 
        3'b011: sram_4_addressline_1=v_column_3; 
        endcase 
    end

    if(!fetched_x4)
    begin
	fetched_x4=1'b1;
    	casex(v_ram_no_4)
	3'b000: sram_1_addressline_1=v_column_4; 
	3'b001: sram_2_addressline_1=v_column_4; 
	3'b010: sram_3_addressline_1=v_column_4; 
        3'b011: sram_4_addressline_1=v_column_4; 
        endcase 
    end
endcase //this is for the entire case statement, The one that uses decimal state numbers.

end //end for always main.















