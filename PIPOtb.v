// Code your testbench here
// or browse Examples
module pipotb();
  reg clk,rst,ld;
  reg [3:0]in;
  wire [3:0]q;
  pipo m(clk,rst,ld,in,q);
  initial
    begin
      $dumpfile("pipotb.vcd");
      $dumpvars(0,pipotb);
    end
  initial
    begin
      clk=1;
      forever #5 clk=~clk;
    end
   initial
    begin
      #10 rst=1;
      #10 rst=0;ld=1;
      #10 in=4'b1001;
      
      #200 $finish;
    end
endmodule
      
      
