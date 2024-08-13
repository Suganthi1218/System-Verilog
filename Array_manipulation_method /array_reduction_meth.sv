
module array_reduction_meth ;
  
  int array [10] = '{1,2,3,4,5,6,7,8,9,2};
  
  
  
  initial
    begin
      
      $display("array elements in array reduction methods ", array);
      
      $display("--------------");
      
      
      $display ("array sum is=%0d " , array.sum );
      
      $display("-----------");
      
        
      $display ("array product is=%0d " , array.product );
      
      $display("-----------");
      
        
      $display ("array and is=%0d " , array.and );
      
      $display("-----------");
        
      $display ("array or is=%0d " , array.or );
      
      $display("-----------");  
      
      $display ("array xor is=%0d " , array.xor );
      
      $display("-----------");
    end
endmodule
