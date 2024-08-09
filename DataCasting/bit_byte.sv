 module bit_byte;
  
   bit [3:0] data1;
   byte data;
   
  
  initial
    begin
      
    
      $display("default value of bit is 0");
      $display("range of byte is 8");
      
      $display("before casting value of bit is =%0b", data1);
      $display("before casting value of byte is =%b",data);
      
      data1=4'b1110;
      data= byte'(data1);
      
      
      $display("after casting the value of logic is =%0b", data1);
      $display("after casting the value of byte is =%b", data);
      
    end 
endmodule 
