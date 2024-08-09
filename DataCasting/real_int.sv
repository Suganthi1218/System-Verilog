module real_int;
  
  real data;
  int data1;
  initial
    begin
      $display("default value of real is =%b",data);
      //data=4.45;
      data=5.5;
      data1 = int'(data);
       
      $display("after casting the value of real is =%b",data);
      $display("after casting the value of int is=%1.2f", data1);
      
    end
endmodule
