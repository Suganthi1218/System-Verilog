
class A ;
  
  int a=5;
  
  function void disp();
    $display("inside parent class: a=%0d" , a );
    
  endfunction
  
endclass

class B extends A;
  int a= 10;
  
  
  function void display();
    $display("inside child class: a=%0d ", a);
   
 endfunction 
endclass
          
module inheritance_ex1;
         
         initial
           begin
             B b1 ;
             b1 = new();
       b1.a= 15;
             $display("------------------------");
        b1.display();
   $display("------------------------");
    b1.disp();
end
endmodule
  

//output 

------------------------
# KERNEL: inside child class: a=15 
# KERNEL: ------------------------
# KERNEL: inside parent class: a=5
