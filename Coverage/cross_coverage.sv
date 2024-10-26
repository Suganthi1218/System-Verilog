
module cover_point_expression ;
  
  bit [1:0] a ;
  bit [2:0] b ;
  
  covergroup cgrp ;
    
    a1 : coverpoint a ;
    b1 : coverpoint b ;
    axb : coverpoint a*b;
    
  endgroup
  
  
  cgrp cg ;
  
  initial begin
    
    cg = new();
    
    repeat(5) begin 
    a=$random;
    b=$random;
    cg.sample();
    
      $display("a=%d b=%d axb=%d coverage =%.2f", a,b,a*b, cg.get_inst_coverage());
      
    end
  end
endmodule
