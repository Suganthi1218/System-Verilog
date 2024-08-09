

module static_multipacked_array;
  
   bit [2:0] [2:0] [3:0] abc ;
 
initial
  begin 
    
   abc=36'hdef;
    
    $display("value of abc=%d",abc);
    
    foreach(abc[i]) begin
      foreach(abc[i][j]) begin
      foreach(abc[i][j][k]) begin
        
        $display("value of abc[%0d][%0d][%0d]=%0d",i,j,k,abc[i][j][k]);
      end
    end
end
  end
 endmodule
