class pack ;
  
  rand bit  [2:0] a ;
  
  constraint co { ! (a inside {[2:4]}) ; }
  
endclass


module top;
  
  pack p ;
  
  initial begin 
    
    
    p = new();
    
    for(int i= 1; i<5; i++) begin 
      void'(p.randomize()) ;
      
      $display("%0t  iteration=%0d var=%0d ", $time, i, p.a);
      
    end
  end
endmodule
