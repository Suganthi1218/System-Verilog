module int_datatype;
  int a=10 ;
  
initial
  begin
    
    $display("default value of byte is =%b", a);
    
    a=214;
    
    $display("after initialize the value of byte is =%b", a);
     a=10;
    
    $display("after initialize the value of byte is =%b", a);
     a=10;
    
    $display("after initialize the value of byte is =%b", a);
  end
  
endmodule 
