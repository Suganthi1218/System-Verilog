module time_datatype;
  time time_data;
  
  initial
    begin
       $display("time is 64-bit unsigned integer");
      $display("\nDefault value of logic =%b", time_data);
      
     #20;
      time_data=$time;
     
      $display("\nafter initialize the value =%b",time_data);
     
end
endmodule
//time is 64-bit unsigned integer
default value of time =xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
after initialize value of time =0000000000000000000000000000000000000000000000000000000000010100 //

/*module time_datatype;
  
  time time_data;
  
  initial
    begin
       
      $monitor("default value of time =%b", time_data);
    #20;
    
      time_data=$time;
      $monitor("after initialize value of time =%b", time_data);

    end
endmodule   */


//output 
default value of time =xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
after initialize value of time =0000000000000000000000000000000000000000000000000000000000010100
