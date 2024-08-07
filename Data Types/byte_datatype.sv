module byte_datatype;
  byte byte_data;
  
initial
  begin
    
    $display("default value of byte is =%b", byte_data);
    
    byte_data=7'b1010101;
    
    $display("after initialize the value of byte is =%b", byte_data);
  end
endmodule


// module byte_datatype;
  byte byte_data;
  
initial
  begin
    
    $display("default value of byte is =%0b", byte_data);
    
    byte_data=8'b01010101;
    
    $display("after initialize the value of byte is =%0d", byte_data);
  end
  
endmodule 
