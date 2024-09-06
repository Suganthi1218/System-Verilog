class parent;
  
  bit [3:0] data;
  int id;
  string d;
  
  function void disp_p();
    $display("data=%0d",data);
    $display("id=%0d",id);
    $display("string=%0s",d);
  endfunction
  endclass

class child extends parent;
  
  bit[3:0] addr;
  function void disp_c();
    $display("addr =%0d", addr);
  endfunction
endclass


module inheritance_function;
 
  
  initial
    begin
      child c=new();
      c.addr=13;
      c.data=5;
      c.id=2;
      c.d="Syera";
      
      c.disp_p();
      c.disp_c();
    end
endmodule
