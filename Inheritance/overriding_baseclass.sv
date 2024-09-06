class parent ;
  
  bit [31:0] data=100 ;
  int id=1 ;
  
  function void dis_p();
    
    $display("parent class : data=%0d, id=%0d ", data, id);
    
  endfunction
  
endclass


class child extends parent ;
  
  bit [31:0] data=200 ;
  int id = 2;
  
  function void dis_c();
    
    $display("child class : data=%0d , id=%0d " , data , id );
    
  endfunction
endclass


module overriding_baseclass;
  
  child c;
initial
  begin
    c=  new();
    $display("-------------------");
   
    c.dis_c();
  end
endmodule

//output

-------------------
# KERNEL: child class : data=200 , id=2 
