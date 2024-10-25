class sample ;
  
  rand bit[2:0] a ;
  
  constraint cn { a>3 ;}
  
endclass


module soft_without_conflict ;
  
  sample s = new();
  initial begin 
    
    $display("without using soft constraint ");
    
    
    for(int i=0; i<6; i++) begin 
      void'(s.randomize());
      $display(" a=%0d value=%0d",i,s.a);
    end
    
    s= new();
    $display("without conflict ");
    
    for(int i=0; i<5; i++) begin 
      
      void'(s.randomize()with{a>5 ;});
      $display("  a=%0d value=%0d ", i, s.a);
    end
  end
endmodule
