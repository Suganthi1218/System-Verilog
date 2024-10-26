

function bit [2:0] sum(int a, int b) ;
  
  int c;
  c=a+b ;
  return c;
endfunction


module covergrp_using_fun;
  
  class sam ;
    
    rand bit [1:0] a;
    rand bit [1:0] b;
    
  endclass
  
  int addition ;
  
  covergroup cgrp ;
    a : coverpoint v.a ;
    b : coverpoint v.b ;
    func : coverpoint sum(v.a, v.b) ; 
  endgroup
  
  sam v ;
  cgrp cg ;
  
  initial begin 
    
    v = new;
    cg = new();

    repeat (5) begin 
      void '(v.randomize()) ;
      
      addition = sum(v.a, v.b);
      
      cg.sample();
      
      $display("a=%d b=%d add=%0d ", v.a,v.b,addition);
      $display("\tcoverage =%0.2f",cg.get_inst_coverage());
    end
  end
endmodule
