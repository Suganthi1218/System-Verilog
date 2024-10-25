class pack ;
  
  rand bit[2:0] value ;
  
  constraint cons {value ==5;}
  
  
endclass

module randomization();
  
  pack p ;
  
  initial begin 
    p=new();
    
    if(p.randomize())  begin 
      $display("\t value=%0d  \t randomization is successful",p.value);
    
    end
    else begin
      $display("\t value=%0d  \t randomization is not successful",p.value);
    end
    
    $display("====================");
    
    if(p.randomize()with{value==2;}) begin 
      $display("----------------");
     $display("\t value=%0d  \t randomization is successful",p.value);
    end
    
else
      $display("\t value=%0d  \t randomization is not successful",p.value);
    
  end
endmodule
