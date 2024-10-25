
class pack ;
  
  rand bit [3:0] a ;
  
  constraint con { a dist {1:=2 , [2:4]:=3, 5:=4, 6:=1 };} 
  
endclass


module top ;
  
  pack p ;
  initial begin 
    p = new();
    
    
    for(int i=0; i<=15; i++) begin 
          
      void'(p.randomize());

      
      $display("[%0t] iteration=%0d a=%0d ", $time , i, p.a);
      
    end
  end
endmodule
