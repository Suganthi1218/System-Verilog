
class address_range;
  
  bit[31:0] start_addr;
  bit[31:0] end_addr;
  function new();
    
    start_addr=40;
    end_addr=50;
    
  endfunction
  
endclass

class packet;
  
  bit [4:0] data ;
  bit [4:0] addr ;
  
  address_range ar;
  
 function new();
    
    data='h12;
    addr='h16;
    ar=new();
 endfunction
  
  function void display();
    $display("data=%0d",data);
    $display("addr=%0d",addr);
    $display("start_addr=%0d",ar.start_addr);
    $display("end_addr=%0d",ar.end_addr);
  endfunction
endclass

module shalow_copy;
  
  packet p1,p2;
  
  initial
    begin
      
      p1=new();
       $display("call p1 display");
     
      p1.display();
      
      p2=new p1;
      
      $display("call p2 display");
      
      p2.display();
      
     p2.addr='ha;
      p2.data='h12;
      p2.ar.start_addr=10;
      p2.ar.end_addr=20;
      $display("p1 display");
      
      p1.display();
      $display("p2 display");
      p2.display();
      
    end
  
endmodule
