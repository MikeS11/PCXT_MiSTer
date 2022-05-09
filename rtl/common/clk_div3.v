module clk_div3(clk, clk_out);
 
input clk;
output clk_out;
 
reg [1:0] pos_count = 2'b00; 
reg [1:0] neg_count = 2'b00;
wire [1:0] r_nxt;
 
always @(posedge clk)
if (pos_count ==2) pos_count <= 0;
else pos_count<= pos_count +1;
 
always @(negedge clk)
if (neg_count ==2) neg_count <= 0;
else neg_count<= neg_count +1;
 
assign clk_out = ((pos_count == 2) | (neg_count == 2));

endmodule