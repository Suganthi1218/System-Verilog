class pack ;
  
  randc bit[3:0] a[2][4] ;
  
endclass


module static_2d_array ;
  
  pack pk ;
  
  initial
    begin 
      pk = new() ;
      $display("before randomize the variable=%0p",pk.a);
      
      for(int i=0;i<2;i++) begin 
        void'(pk.randomize());
        $display("after randomize array =%0p", i,pk.a);
      end
    end
      endmodule
