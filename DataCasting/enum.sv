module enum_example;
  
   enum{carrot,beans,onion,brinjal,potato,raddish,tomoto} veg_e;
  
 
  initial
    begin
      
     veg_e = onion;
        
        $display("Element is %s and the value is %0d",veg_e.name(),veg_e);
        
 end
    
endmodule
        
