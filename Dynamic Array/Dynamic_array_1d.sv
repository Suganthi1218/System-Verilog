module Dynamic_array;
  
  byte a[];
 
initial
  begin
    
    a= new[4];
    a='{1,2,3,4};
        
              foreach(a[i]) begin
                $display("value of a[%0d]=%0d", i,a[i]);
 end
  end
 endmodule
