module counter #(
    parameter RESET_VALUE = 0,
	parameter N = 8
)(
//intrari
input [N-1:0] data_i,
input load_i,
input enable_i,
input up_down_i,
input clk_i,
input rst_i,

//iesiri
output reg[N-1:0] counter_o,
output reg overflow_o
);

always@(posedge clk_i or negedge rst_i)begin

	if(rst_i == 0) //daca este activat resetul
		counter_o <= RESET_VALUE;
		else if(enable_i == 0)
			counter_o <= counter_o; 
		else // enable_i == 1
			if (load_i == 1)
				counter_o <= data_i;
			else if(up_down_i == 1) 
			   counter_o<= counter_o + 1 ;
			   else 
			   counter_o <= counter_o - 1;

end

always@(posedge clk_i or negedge rst_i)begin
if ( ((counter_o == {N{1'b1}}) && (up_down_i == 1) && enable_i) ||  ((counter_o == {N{1'b0}}) && (up_down_i == 0) && enable_i) )
overflow_o <= 1;
else 
overflow_o <=0; 
end 

endmodule 
