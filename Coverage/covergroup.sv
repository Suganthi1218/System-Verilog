
module cover_group ;
  
  bit [1:0] a ;
  bit [1:0] b ;
  
 covergroup cgrp ;
   
   c1 : coverpoint a ;
   c2 : coverpoint b ;
   
 endgroup
  
  cgrp cg ;
  
  initial
    begin 
      repeat(5) begin 
      cg = new() ;
      
      a = $random;
      b = $random;
      
      cg.sample();
      
      $display("a =%d b=%d, get inst coverage = %f", a, b, cg.get_inst_coverage());
      
      
    end
      $display("overall coverage %f", cg.get_coverage ());
      

    end
endmodule
