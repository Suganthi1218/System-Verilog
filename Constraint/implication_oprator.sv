class sample ;
  
  rand bit[3:0] val1 ;
  rand bit[3:0] val2 ;
  
  constraint cn1 { (val1 inside{[2:15 ]}) -> (val2<10) ; }
  
  
endclass


module top ;
  
  
  initial begin 
    
    sample s = new() ;
    
    for(int i=0; i<10; i++) begin 
      
      void'(s.randomize());
      
      $display("iteration=%0d value1=%0d value2=%0d", i,s.val1,s.val2);
      
    end
  end
endmodule
