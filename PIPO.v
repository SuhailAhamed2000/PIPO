// Code your design here
module pipo(clk,rst,ld,in,q);
  input clk,rst,ld;
  input [3:0]in;
  output reg [3:0] q;
  always @(posedge clk)
      begin
        if (rst)
          q <= 0;
        else if(ld)
         q=in[3:0];
         
          
      end
endmodule
