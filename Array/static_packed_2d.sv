module multi_packed_array;
  
  bit   [3:0] [2:0] abc; 
initial
  begin
    abc=12'b101111111000;
  
    
    
    foreach(abc[i]) begin
      foreach(abc[i][j]) begin
        $display("value of abc[%0d][%0d] = %d",i,j,abc[i][j]);
      end
   end
    
  end
endmodule 
