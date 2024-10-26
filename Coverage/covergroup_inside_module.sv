 


class pack ;
  
  rand bit [3:0] a ;
  rand bit [3:0] b ;
  
endclass 

pack p = new  ;


module covergroup_inside_mod ;
  
  covergroup cgrp ;
    c1 : coverpoint p.a ;
    c2 : coverpoint p.b ;
  endgroup
  
  cgrp cg ;
  
  initial
   begin 
     
     cg = new ;
     
     repeat(5) begin 
       void'(p.randomize) ;
       
cg.sample();
       
       $display("a =%d, b=%d, coverage%% =%.2f ",p.a, p.b, cg . get_inst_coverage()) ;
       
     end
     
     $finish ;
     
   end 
endmodule 
