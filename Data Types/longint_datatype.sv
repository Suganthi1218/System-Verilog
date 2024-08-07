 module longint_datatype;
 longint a=10 ;
  
initial
  begin
    
    $display("default value of byte is =%0b", a);
    
    a=214;
    
    $display("after initialize the value of byte is =%0b", a);
     a=64'b1;
    
    $display("after initialize the value of byte is =%0b", a);
     a=10;
    
    $display("after initialize the value of byte is =%0b", a);
  end
  
endmodule 
