module real_time;
  
  real data;
  time data1;
  initial
    begin
      $display("default value of real is =%b",data);
      data=4.85;
      //data=5.5;
      data1 = time'(data);
       
      $display("after casting the value of real is =%b",data);
      $display("after casting the value of time is=%1.2f", data1);
      
    end
endmodule
