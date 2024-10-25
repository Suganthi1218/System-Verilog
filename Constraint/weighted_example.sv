
class pack ;
  
  rand bit [3:0] a ;
  
  constraint co { a dist {1 :/2, [2:4]:/3 , 5:/4 };}
  
endclass


module top;
  
  pack p ;
  
  initial begin 
    
    
    p = new();
    
    for(int i= 1; i<9; i++) begin 
      void'(p.randomize()) ;
      
      $display("%0t  iteration=%0d var=%0d ", $time, i, p.a);
      
    end
  end
endmodule
