
class sample ;
  
  rand bit[2:0] value ;
  
  constraint cons { value inside {2,4,6};}
  
endclass


module constraints_mode();
  
  sample s = new();
  
  initial begin 
    
    $display("constraint_mode (1)is enable  display the values are 1,5,7");
    $display("constraint_mode(0) is disable display  the random values ");
    
    
  
    $display("before the constraint_mode() is disable");
    $display("value of constraint mode=%0d",s.cons.constraint_mode());
    
    void'(s.randomize());
    
    $display("value=%0d",s.value);
    
    s.cons.constraint_mode(0);
    $display("after constraint mode is disable ");
    
    $display("value of constraint mode=%0d ", s.cons.constraint_mode());
    repeat(5) begin
      void'(s.randomize());
      $display("value=%0d",s.value);
    end
  end
endmodule
 
