class  class1;
  
  rand bit[2:0] value ;
  
  constraint cons { value==1 ;} 
  
endclass

class class2;
  
  rand bit[2:0] value ;
  
  static constraint cons { value==1 ;}
  
  
endclass

module static_constraint ;
  
  class1 object1 = new();
  class1 object2 = new();
  class2 object3 = new();
  class2 object4 = new();
  
  initial begin 
    object1.cons.constraint_mode(0) ;
    $display(" value must be 1 ");
    for(int i=0; i<4;i++) begin 
      void'(object1.randomize());
      void'(object2.randomize());
      
      #1 $display("[%0t] iteration:%0d value_object1=%0d value_object2=%0d ", $time,object1.value, object2.value );
    end 
    
       object3.cons.constraint_mode(0) ;
    $display(" value must be 1 ");
    for(int i=0; i<4;i++) begin 
      void'(object3.randomize());
      void'(object4.randomize());
      
      #1 $display("[%0t] iteration:%0d value_object3=%0d value_object4=%0d ", $time,object3.value, object4.value );
    end
  end
endmodule
