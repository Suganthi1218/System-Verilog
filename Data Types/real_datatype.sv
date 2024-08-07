module real_datatype;
  
  real real_data;
  
  initial
    begin
       
      $display("default value of real =%b", real_data);
    
      real_data=1;
      $display("after initialize value of real =%b",real_data);
      real_data=4.43;
      $display("after initialize value of real =%b",real_data);

    end
endmodule   
