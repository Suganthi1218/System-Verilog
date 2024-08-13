
module unpacked_array;
  
  byte a[8];
  int abc[10];
  
initial
  begin
    
    a='{1,2,3,4,5,6,7,8};
 
 foreach(abc[i]) begin
      
   abc[i]=$urandom_range(10,50);
     $display("values of abc[%0d]=%0d", i,abc[i]);
 end
    
    foreach(a[i]) begin
      $display("values of a[%0d]=%0d", i,a[i]);
    end
  
  end
endmodule
      
   
