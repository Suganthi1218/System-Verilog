
class sample ;
  
  rand bit[3:0] data1 ;
  rand bit[3:0] data2 ;
  
  constraint cn {data1 dist {1:/4 ,[2:5]:/5};}
  constraint cn1 {data2 dist {1:=4, [2:5]:=5};}
  
endclass

module top;
  
  
  
  initial begin 
    
    sample s = new();
    
    repeat(10) begin 
      
      s.randomize();
      
      $display(" (with :/)=%0d  (with:=)=%0d",s.data1, s.data2);
    end
  end
endmodule
