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


module access_classmember;
  parent p ;
  child c;
initial
  begin
    p = new();
    c=  new();
    $display("-------------------");
    p.dis_p();
    $display("-------------------");
    c.dis_c();
    $display("-------------------");
  end
endmodule
