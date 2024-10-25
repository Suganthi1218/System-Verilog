
class sample ;
  
  rand bit[2:0] value ;
  int i;
  
  
  function void pre_randomize() ;
    if(i%2==0) begin 
      
      rand_mode(0);
      $display("randmoization stop");
      
    end
    else 
      rand_mode(1) ;
    i++ ;
    
  endfunction 
endclass


module pre_randomization();
  
  sample s ;
  
  initial begin
    
    s = new() ;
    
    for(int i=0; i<5;i++) begin 
      
      void'(s.randomize());
      
      #1 $display("\t [%0t] iteration:%0d value=%d ", $time,i,s.value);
    end
  end
endmodule 
