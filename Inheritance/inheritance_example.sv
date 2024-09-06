https://edaplayground.com/x/Xj3D

class parent ;
  
  string name ;
  bit [4:0]id ;
  int data ;
  
  function void display();
    $display("inside parent class: name=%s , id=%0d , data=%0h " , name , id , data );
   
    
  endfunction
  
endclass

class child extends parent;
  string name ;
  bit[4:0] id ;
  int data;
  
  function void display();
    $display("inside child class");
   
 endfunction 
endclass
          
module inheritance_example;
         
         initial
           begin
             child c1 ;
             parent p1;
             c1 = new();
             p1=c1;
        p1.name ="syera"; 
        p1.id ='d12;     
        p1.data='h123;
             $display("------------------------");
        p1.display();
              $display("------------------------");
        c1.display();
end
endmodule


//output 

# KERNEL: ------------------------
# KERNEL: inside parent class: name=syera , id=12 , data=123 
# KERNEL: ------------------------
# KERNEL: inside child class  
