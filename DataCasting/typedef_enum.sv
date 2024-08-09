module enum_example;
  
  typedef enum{carrot,beans,onion,brinjal,potato,raddish,tomoto} veg_e;
  
  veg_e veg;
  initial
    begin
      
      for(int i=0; i<6;i=i+1) begin
        
        $display("Element is %s and the value is %0d",veg.name(),veg);
        veg=veg.next();
        
 end
    end
endmodule
        
