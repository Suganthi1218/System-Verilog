
class sample ;
  
  rand bit[3:0] value1 ;
  
  constraint cn {  value1 >5 ;
                 value1<15 ;}
  
  constraint cn2 { value1 >8;}
  
  
endclass


module top ;
  
  
  initial begin 
    
    sample s = new() ;
    
    for(int i=1;i<10; i++) begin 
      void'(s.randomize());
      
      $display("iteration=%0d  value1=%0d",i,s.value1);
    end
  end
endmodule
