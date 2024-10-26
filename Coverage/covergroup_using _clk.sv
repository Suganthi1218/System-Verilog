
module covergrp_usgclk;
  
  bit a ;
  bit[2:0] b ;
  bit clk; 
  
  always #5 clk = ~ clk ;
  
  covergroup cgrp @(posedge clk ) ;
    c1 : coverpoint a ;
    c2 : coverpoint b ;
  endgroup
  
  cgrp cg = new() ;
  
  initial begin 
    repeat(5) begin 
      
      @(posedge clk ) ;
      a = $random;
      b =$urandom;
     
      $display("a=%d, b=%d, coverage%% = %.2f", a,b,cg.get_inst_coverage());
    end
    $finish;
  end
endmodule
