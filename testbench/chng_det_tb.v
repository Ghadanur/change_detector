module chng_det_tb;
reg sig,clk,rst;
wire det_out,chngd_sig;

chng_det uut (
   .sig(sig),
   .clk(clk),
   .rst(rst),
   .chngd_sig(chngd_sig),
   .det_out(det_out)
   );
   
initial begin
clk =0;
forever #5 clk=~clk;
end
always@(posedge clk)
begin
rst = 1'b0; sig =1'b0; #10;
for(integer i=0;i<5;i=i+1) begin
    rst = 1'b0; sig =1'b0; #10;
    rst = 1'b0; sig =1'b0; #10;
    rst = 1'b0; sig =1'b1; #10;
    rst = 1'b0; sig =1'b1; #10;
    rst = 1'b0; sig =1'b1; #10;
    rst = 1'b0; sig =1'b0; #10;
    rst = 1'b0; sig =1'b0; #10;
    rst = 1'b0; sig =1'b1; #10;
    rst = 1'b0; sig =1'b1; #10;
    rst = 1'b1; sig =1'b1; #10;
    end
