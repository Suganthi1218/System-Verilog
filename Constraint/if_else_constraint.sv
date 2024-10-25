class sample ;
  
  rand bit[3:0] val1;
  rand bit[3:0] val2;
  
  constraint cs { if(val1 inside {[4'h3:4'h9]} ) 
                     val2==1 ;
                 else {
                    val2==0;
                 }
                }
                   
endclass

module top ;
  
  initial begin 
    sample s= new();
    
    repeat(5) begin 
      void'(s.randomize());
      
      $display("[%0t] iteration value1=%0d value2=%0d",$time, s.val1,s.val2);
    end
  end
endmodule
