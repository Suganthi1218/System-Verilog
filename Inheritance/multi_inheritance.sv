class parent ;
  
  bit [31:0] data_p;
  
  function void dis_p();
    $display("parent class : data_p=%0d ", data_p);
  endfunction
  
endclass


class child1 extends parent ;
  bit [31:0] data_c1 ;
  
  function void dis_c1();
    
    $display("child1 class : data_c1=%0d" , data_c1);
    
  endfunction
endclass

  
class child2 extends parent ;
  bit [31:0] data_c2 ;
  
  function void dis_c2();
    
    $display("child1 class : data_c2" , data_c2);
    
  endfunction
endclass

  class child_A extends child1 ;
    bit [31:0] data_child_A ;
  
  function void dis_child_A();
    
    $display("child1 class : data_child_A=%0d" , data_child_A);
    
  endfunction
  endclass


    class child_B extends child_A ;
      bit [31:0] data_child_B ;
  
  function void dis_child_B();
    
    $display("child1 class : data_child_B=%0d" , data_child_B);
    
  endfunction
  endclass


module multi_inheritance ;
  
 child_B cb;
  
initial
  begin
    
    cb = new();
    cb.data_p ='d12;
    cb.data_c1 ='d13;
    cb.data_child_A ='d15;
    cb.data_child_B ='d16;
    
    $display("---------------------");
    cb.dis_p();
     $display("---------------------");
    cb.dis_c1();
     $display("---------------------");
    cb.dis_child_A();
     $display("---------------------");
    cb.dis_child_B();
     $display("---------------------");
  end 
endmodule

//output 

---------------------
# KERNEL: parent class : data_p=12 
  
# KERNEL: ---------------------
# KERNEL: child1 class : data_c1=13
  
# KERNEL: ---------------------
# KERNEL: child1 class : data_child_A=15
  
# KERNEL: ---------------------
# KERNEL: child1 class : data_child_B=16
# KERNEL: ---------------------
