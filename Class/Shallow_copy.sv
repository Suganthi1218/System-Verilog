class sample;
  
  bit[4:0] data;
  
endclass

module Shallow_copy;
  
  sample tr1,tr2;
  
  initial
    begin
      
      tr1=new();
      tr1.data=5;
      
      tr2=new tr1;
      
      $display("tr1.data=%0h",tr1.data);
      $display("tr2.data=%0h",tr2.data);
      
      tr2.data=10;
      
      $display("tr2.data=%0h",tr2.data);
       $display("tr1.data=%0h",tr1.data);
      
    end
endmodule
