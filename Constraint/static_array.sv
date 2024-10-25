class static_array2 ;
  
  rand bit [3:0] a[2][3] ;
  
endclass


module static_array ;
  
  
  static_array2 str2 ;
  
initial
  begin 
    
    str2 = new();
    $display("before randomize the array=%0p",str2.a);
    for(int i=0; i<=5; i++) begin 

    
      void '(str2.randomize());
      
      $display("randomize the value of array a =%0p",str2.a );
      
    end
  end
endmodule
