class sample;
  
  int a;
  int b;
  bit[3:0] data;
 // function new(int ca, int cb, bit[3:0] cdata);
 
//     a=ca;
//     b=cb;
//     data=cdata;
//     $display("value of a=%0d,b=%0d,data=%0d",a,b,data);
//   endfunction
  
   function new();
       a=10;
       b=5;
       data='d12;
    $display("value of a=%0d,b=%0d,data=%0d",a,b,data);
  endfunction
endclass

module class_example1;
  
  sample s1;
  initial
    begin
      s1=new();
     // s1=new(10, 5,'d15);
    
      
   end
      endmodule
  
