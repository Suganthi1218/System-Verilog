//array locator indexing methods


module array_locator_methods ;
  
  int array[8] = '{1,2,3,4,5,6,7,8 };
  
  int result[$] ;
  
initial
  begin
    
    $display("array elements is", array);
    
    result = array.find_index(x) with (x>2);
    $display("find index  : %0p", result);
    
    result = array.find_first_index with (item <3 & item < 6);
    $display("find frst index =%0p", result);
    
    result = array.find_last_index with (item <7 & item >= 1);
    $display("find last index =%0p", result);
    
    
     
    result = array . unique_index();
    $display("unique index  :%0p", result);
    
  end
endmodule
