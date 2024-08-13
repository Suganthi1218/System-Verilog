module static_2d_array;
  
  bit [2:0] [3:0] abc ;
 
initial
  begin 
    
   abc=12'hdef;
    
    $display("value of abc=%d",abc);
    
    foreach(abc[i]) begin
      foreach(abc[i][j]) begin
        
        $display("value of abc[%0d][%0d]=%0d",i,j,abc[i][j]);
      end
    end
end
 endmodule
