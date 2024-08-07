module logic_datatype;
  logic[2:0] logic_data;
  
  initial
    begin
      $display("\nDefault value of logic =%b", logic_data);
      
      logic_data=3'b111;
      
      $display("\nafter initialize the value =%b",logic_data);
     
end
endmodule
