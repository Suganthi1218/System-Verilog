module static_packed ;
  
  bit [3:0] abc ;
 initial
   begin
     
    abc=4'b1010;
     foreach(abc[i])begin
      
      $display("value of abc[%0d] =%0d", i,abc[i]);
    end
 
   end
endmodule
