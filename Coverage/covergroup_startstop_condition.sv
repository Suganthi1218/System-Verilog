
class sample1;
  
  randc bit[2:0] a;
  randc bit[1:0] b;
  
endclass

 sample1 s ;

covergroup cgrp ;
  
  coverpoint s.a ;
  coverpoint s.b;
  
endgroup

cgrp cg ;

module covergrp_strt ;
  bit display=0;
  initial begin 
     s = new;
  cg=new;
    
    for(int i=0; i<5; i++) begin 
      void'(s.randomize());
      cg.sample();
      
      $display("a=%0d b=%0d coverage =%.2f",s.a,s.b,cg.get_inst_coverage());
      
      if(cg.get_inst_coverage()>65 ) begin
        
        cg.stop;
      if(display==0)
 
    $display("coverage is greaterthan 65%% , stop executing ");
      display=1;
      
 end     
end
  end
endmodule
