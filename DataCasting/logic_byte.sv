 module logic_byte;
  
   logic [3:0] data1;
   byte data;
   
  
  initial
    begin
      
    
      $display("default value of logic is x");
      $display("range of byte is 8");
      
      $display("before casting value of logic is =%0b", data1);
      $display("before casting value of byte is =%b",data);
      
      data1=4'b1zzz;
      data= byte'(data1);
      
      
      $display("after casting the value of logic is =%0b", data1);
      $display("after casting the value of byte is =%0b", data);
      
    end 
endmodule 
