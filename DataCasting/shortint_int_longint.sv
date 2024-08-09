// Code your testbench here
// or browse Examples
module shortint_int_longint;
  
  shortint data;
  int data1;
  longint data2;
  
  initial
    begin
      
      $display("default value of shortint is 16 =%b",data);
      $display("default value of int is 32 =%b",data1);
      $display("default value of longint is 64 =%b",data2);
      data = 5;
      
       data = 2'b11;
      data1 = int'(data);
      data2 = longint'(data);
     
      
      $display("after initialize the value of shortint is =%b", data);
      $display("after initialize the value of int is =%b", data1);
      $display("after initialize the value of longint is =%b", data2);
      
    end
endmodule
      
      
      
      
