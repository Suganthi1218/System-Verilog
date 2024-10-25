
class sample ;
  
  rand bit[2:0] a ;
  
  constraint cons { a>2 ;}
  
endclass

module soft_constraint();
  
  sample s ;
  
 
  
  initial begin 
    
     s= new();
    $display(" with conflict");
    for(int i=0; i<5; i++) begin 
      void'(s.randomize()with{a<5;});
      
      $display("a=%0d value=%0d ", i,s.a);
    end
    
    s=new();
    $display("conflict resolved");
    for(int i=0; i<5; i++) begin
      
      void'(s.randomize()with{soft a<7;});
      $display("a=%0d value=%0d ", i,s.a);
    end
  end
endmodule
    
