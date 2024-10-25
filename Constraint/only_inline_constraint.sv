class sample ;
  
  rand bit [2:0] value ;
  
endclass


module only_inline();
  
  sample s = new();
  
  initial begin 
    
    for(int i=0; i<10 ;i++) begin 
      
      void'(s.randomize()with{value ==2 ;});
      
      $display("iteration=%0d, value=%0d", i,s.value);
    end
  end
endmodule
