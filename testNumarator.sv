
module testNumarator;
parameter N_TB = 8;
wire [N_TB-1:0] data;
wire load;
wire enable;
wire up_down;
wire clk;
wire rst;
wire [N_TB-1:0 ] counter;
wire overflow;


 

counter  #(.N(N_TB)) DUT(
.data_i(data),
.load_i(load),
.enable_i(enable),
.up_down_i(up_down),
.clk_i(clk),
.rst_i(rst),
.counter_o(counter),
.overflow_o(overflow)
);

generator_stimuli #( .N(N_TB)) generator_inst(
.data_o(data),
.load_o(load),
.enable_o(enable),
.up_down_o(up_down),
.clk_o(clk),
.rst_o(rst)
);
endmodule