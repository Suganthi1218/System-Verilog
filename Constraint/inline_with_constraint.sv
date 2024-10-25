
class sample ;
  
  rand bit[2:0] val ;
  
  constraint c { val>2 ;}
  
endclass


module inline_constraint ;
  
  sample s= new();
  
  initial begin 
    
    void'(s.randomize()) ;
    $display("iteration1 value=%0d", s.val);
    
    void'(s.randomize()with{val==7 ;}) ;
          $display("iteration2 value=%0d", s.val);
 end
 endmodule          
