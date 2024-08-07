module shortint_datatype;
  shortint shortint_data;
  initial
    begin
      
      $display("default value of shortint is =%0b", shortint_data);
      
      shortint_data=6'b111100;
      
      $display("after initialize the value of shortint is =%0b", shortint_data);
      
    end
  endmodule
