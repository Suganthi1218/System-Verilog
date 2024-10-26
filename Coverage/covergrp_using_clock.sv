

module covergrp_using_clock ;
  
  bit[2:0] a;
  bit [1:0] b;
  bit clk ;
always #3 clk =~clk ;
  
  covergroup cgrp @(posedge clk );
    
    c1: coverpoint a;
    c2: coverpoint b;
  endgroup 
  
  
  cgrp cg ;
  initial
    begin 
      
      cg = new();
      
      repeat(5) begin 
        
        a = $random;
        b = $urandom;
        
       cg.sample();
        
        $display("a =%0d b=%0d coverage =%0.2f", a,b,cg.get_inst_coverage());
        
      end
    end
  
endmodule
