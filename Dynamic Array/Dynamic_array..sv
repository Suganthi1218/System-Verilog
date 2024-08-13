
module dynamic_array;
  
  int a[];
initial
  begin
    
    a=new[5];
    a ='{1,2,3,4,5};
    
    foreach(a[i]) begin
      $display("value of a is [%0d]= %0d", i, a[i]);
    end
  end
endmodule
    
    
