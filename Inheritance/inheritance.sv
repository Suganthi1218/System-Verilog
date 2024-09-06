class parent;
  
  bit [3:0] data;
  int id;
  string d;
  endclass

class child extends parent;
  
  bit[3:0] addr;
  
endclass

module inheritance;
  
  
  
  initial
    begin
      child c=new();
      c.addr=13;
      c.data=5;
      c.id=2;
      c.d="Syera";
      
      $display("value of addr=%0d, data=%0d, id=%0d,d=%s", c.addr,c.data,c.id,c.d);
    end
endmodule
