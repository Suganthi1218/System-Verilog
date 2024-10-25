class pack ;
  
  rand bit [3:0] a ;
  
  constraint co { (a inside{[2:7]});}
  
endclass

module inside_cons ;
  
  pack p ;
  
 initial begin 
   
   p= new();
   
  
   for(int i=1;i<5 ; i++) begin 
      void'(p.randomize());
   
     $display("[%0t] iteration=%0d  a=%0d ",$time,i,p.a);
   end
 end
endmodule
