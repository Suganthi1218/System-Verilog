
class parent ;
  
  bit[31:0]  data;
  function void disp();
    
    $display("parent class : data=%0d" , data);
  endfunction
endclass
  
  class child extends parent ;
  int id ;
    
    function void disc();
      $display("child class : id=%0d " , id);
    endfunction 
  endclass

  module inherit ;
    
    child c ;
    initial
     begin
       c = new();
      c.data ='d125;
       c.id='d12;
       $display("-------------");
       
       c.disp();
       $display("--------------");
       c.disc();
     end
  endmodule



// output 


-------------
# KERNEL: parent class : data=125
# KERNEL: --------------
# KERNEL: child class : id=12 
