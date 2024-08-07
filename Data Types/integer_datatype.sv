module integer_datatype;
  
  integer integer_data;
  
  initial
    begin
      
      $display("default value  of integer datatype is =%b",integer_data);
      
      
      integer_data = 32'b1111_1010_1000_1010_1111_1111_1010_1000 ;
      $display("after initialize the value of integer is =%b", integer_data);
      
    end
endmodule
