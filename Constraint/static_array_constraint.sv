class sta_arr ;
  
  randc bit a[5] ;
  
endclass

module static_array_constraint ;
  
  sta_arr arr = new();
  initial
    begin
  
  $display("static array using constraint ");
      $display("before randomize array value ");
      $display("%0p",arr.a);
  
      $display("after randomize array value");
  void'(arr.randomize()) ;
  
      $display("static array =%0p", arr.a );
  
    end
endmodule
