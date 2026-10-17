module generator_stimuli #(parameter N =5)(
output reg [N-1:0] data_o,
output reg load_o,
output reg enable_o,
output reg up_down_o,
output reg clk_o,
output reg rst_o);

initial begin

rst_o <=0; //valoarea activa pentru reset este 0
clk_o <= 0;

#132 
rst_o <=1;
end

always #10 clk_o <= ~clk_o;



initial begin
data_o <= 0;
load_o <= 0;
enable_o <= 0;
up_down_o <= 0;
#150
data_o <= 0;
load_o <= 0;
enable_o <= 1;
up_down_o <= 0;
#150
data_o <= 10;
load_o <= 1;
enable_o <= 1;
up_down_o <= 0;
#150
data_o <= 15;
load_o <= 1;
enable_o <= 1;
up_down_o <= 0;
#150
data_o <= 20;
load_o <= 0;
enable_o <= 1;
up_down_o <= 0;
#450;
$stop();
end 
endmodule