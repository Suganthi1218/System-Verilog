// Code your design here
module int_longint;
  int data;
  longint data1;
  logic [5:0] a;
  initial
  begin
    data=6'd34;
    a=data;
    $display("a=%b",a);
    $display("range of int is 32 bit");
    $display("range of longint is 64 bit");
    $display("default value of int is =%b",data);
    $display("default value of longint is =%b",data1);
    
    
   data = 6'b110000;
    
    data1 = longint'(data);
    
    $display("after initializing the value of int is =%b", data);
    $display("after initializing the value of longint is =%b", data1);
    
  end
endmodule
