module integer_int_datatype;
  
  integer integer_data;
  int int_data;
  
  initial
    begin
      $display("\nsize of integer = %0d",$size(integer_data));
      $display("range of integer is 32");
      $display("default value of integer is x");
      $display("range of int is 32");
      $display("default value of int is 0");
      $display("default value of integer is =%0b", integer_data);
      $display("default value of int is =%0b",int_data);
      
      integer_data=8'b10101111;
      int_data=int'(integer_data);
      
      $display("after initialize the value of integer is =%0b", integer_data);
      $display("after initialize the value of int is =%0b", int_data);
      $display("size of integer = %0d",$size(integer_data));
 
    end 
endmodule
