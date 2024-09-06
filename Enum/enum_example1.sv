module enum_example1;
  
  typedef enum{carrot,beans,onion,brinjal,potato,raddish,tomoto} veg_e;
  
  veg_e veg1,veg2,veg3,veg4;
  initial
    begin
      
    veg1= potato;
      veg2=tomoto;
      veg3=onion;
      veg4=carrot;
      
        
      $display("veg1 is %s and and the values are %0d, \n  veg2 is %s and and the values are %0d, \n veg3 is %s and the values are %0d",veg1.name(),veg1,veg2.name(),veg2,veg3.name(),veg3);
          
 end
  
endmodule
        
