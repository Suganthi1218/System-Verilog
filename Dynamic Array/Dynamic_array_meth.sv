module Dynamic_array;
  
  byte a[]=new[10];
 
initial
  begin
    
    
    a='{1,2,3,4,5,6,7,8,9,0};
        
              foreach(a[i]) begin
                $display("value of a[%0d]=%0d", i,a[i]);
 end
    $display("array size %0d",a.size());
    
    a.delete();
     $display("array size %0d",a.size());
  end
 endmodule
