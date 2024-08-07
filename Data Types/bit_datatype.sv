module bit_datatype;
  
  bit  single_bit_data;
  bit [3:0] multi_bit_data;
  
  initial
    begin
      $display("default value of single bit is=%b", single_bit_data);
      $display("default value of multi bit is=%b", multi_bit_data);
      
      single_bit_data=1;
      multi_bit_data=4'b1010;
      
      $display("after value of bit is=%b", single_bit_data);
      $display("after value of bit is=%b", multi_bit_data);
 end
endmodule
