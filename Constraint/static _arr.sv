
class static_arr ;
  
 rand byte a[5] ;
  
  randc byte b[5] ;
  
endclass 


module st_arr;
  
  static_arr sta_arr ;
  
  initial
    begin 
      
      sta_arr = new();
      
       $display("static array constraints ");
      
       $display("before randomize the element in array ") ;
      
      $display("%0p", sta_arr.a);
      
      void '(sta_arr.randomize());
      $display("after randomize the element of array a " ) ;
       $display("output = %0p", sta_arr.a);
      
       $display("------------------------");
      
  $display("before randomize the element in array ") ;
      
      $display("%0p", sta_arr.b);
      
      void '(sta_arr.randomize());
      $display("after randomize the element of array b " ) ;
      $display("output = %0p", sta_arr.b);
      
    end
endmodule
