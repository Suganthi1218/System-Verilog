class sample ;
  
  rand bit [4:0] value ;
  
  int i;
  
  function void pre_randomize();
    
    if(i%2==0) begin 
      
      rand_mode(0) ;
      $display("\t stop randomization");
    end
    else 
      rand_mode(1);
    i++;
    
  endfunction
  
endclass


module pre_randomization ;
  
  sample s ;
  
  initial begin 
    
    s= new();
    
    for(int i=1;i<5;i++) begin 
      
      $display("call randomization");
      
      void'(s.randomize());
      
      $display("[%0t] iteration=%0d value=%0d", $time, i,s.value);
      
    end
  end
endmodule
