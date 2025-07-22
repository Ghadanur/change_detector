module chng_det(
    input sig,clk,rst,
    output det_out,
    output reg chngd_sig
    );
    
    always @ (posedge clk or negedge rst)
    begin
      if (rst) begin;
           chngd_sig <=1'b0;
           end
      else
      begin
            chngd_sig <=sig;          
            end              
    end        
    assign det_out=~(sig^chngd_sig);   
endmodule
