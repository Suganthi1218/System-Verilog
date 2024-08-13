

module array_ordering_meth ;
  
  int array[12] ='{1,2,3,4,5,6,7,8,9,1,2,3};
  
  initial
    begin
      
      $display("array ordering methods",array);
      
      $display("----------------");
      
      $display("before array sort meth is=%0p",array );
      
      array.sort();
      
      $display("after array sort meth is=%0p",array );
      
        $display("----------------");
      
   
      $display("before array rsort meth is=%0p",array );
      
      array.rsort();
      
      $display("after array rsort meth is=%0p",array);
      
        $display("----------------");
      
         
      $display("before array reverse meth is=%0p",array );
        $display("----------------");
      
      array.reverse();
      
      $display("after array reverse meth is=%0p",array );
      
         
      $display("before array shuffle meth is=%0p",array );
      
        $display("----------------");
      array.shuffle();
      
      $display("after array shuffle meth is=%0p",array );
      
    end
endmodule
