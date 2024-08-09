module packed_array;
  
  bit [3:0] abc;
  reg [7:0] def;
  logic [15:0] xyz;
  
initial
  begin
    abc=4'b1100;
    def=8'd10;
    xyz=16'd11;
    
    foreach(abc[i])begin
      
      $display("value of abc[%0d] =%0d", i,abc[i]);
    end
 
    foreach(def[i])begin
      
      $display("/nvalue of def[%0d] =%0d", i,def[i]);
    end
    
    foreach(xyz[i])begin
      
      $display(" value of xyz[%0d] =%0d", i,xyz[i]);
    end
  end
endmodule
