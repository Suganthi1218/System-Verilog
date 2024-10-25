class sample ;
  rand bit[2:0] val ;
  
  constraint c {val==2 ;};
  
endclass


module conflict_inline_constraint();
  
  int check ;
  sample s = new() ;
  
  initial begin 
    
    for(int i=1;i<5; i++) begin 
      
      check = s.randomize() with{val==3 ;};
      
      if(check)
        $display("Randomization Pass iteratio=%0d value=%0d", i, s.val);
      else
        $display("Randomization Fail iteration=%0d value=%0d", i,s.val);
    end
  end
endmodule
