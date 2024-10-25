
module using_evnt ;
  
  bit [1:0] a ;
  
  event e ;
  
  
  covergroup cgrp @ (e.triggered);
  c1 : coverpoint a ;
endgroup
  
  cgrp cg;
  
initial begin 
 
  cg = new();
  
  repeat(6) begin 
    
    ->e ;
    
    a = $random;
    cg.sample();
    $display("a=%0d coverage  =%0.2f", a, cg.get_inst_coverage());
    
  end
end
endmodule
