
module cover_point ;
  
  bit[3:0] a;
  bit[3:0] arr[5] = {1,3,5,7,12};
  
 covergroup cgrp ;
   
  a1: coverpoint a ;
   
 endgroup 
  
cgrp cg ;
  initial begin 
    
    cg = new();
    
    foreach(arr[i]) begin 
      a = arr[i] ;
      
      cg.sample();
      $display("a=%d coverage = %.2f", a,cg.get_inst_coverage());
    end
  end
endmodule
