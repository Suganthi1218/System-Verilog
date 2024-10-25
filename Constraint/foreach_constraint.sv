
class sample ;
  
  rand bit[3:0] arr1[8] ;
  
  rand bit[3:0] arr2[7] ;
  
  constraint cs { foreach (arr1 [i] ) 
    arr1[i]== i ;
                 foreach(arr2[i])
                   arr2[i]==i ; }
endclass


module top;
  
  sample s ;
  
  initial begin 
    
    s = new();
    
    void'(s.randomize());
    $display("arr1=%0p",s.arr1);
    $display("\t arr2=%0p",s.arr2);
    
  end
endmodule
