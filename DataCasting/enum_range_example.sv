module enum_ex;
  typedef enum{street[3:7]} strnum_e;
  strnum_e str;
  initial
    begin
      
      $display("Element is %s and the values are %0d", str.name(),str);
      str=street5;
      
  $display("Element is %s and the values are %0d", str.name(),str);
    end
endmodule
      
