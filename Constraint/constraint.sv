class csname ;
  
  rand int a;
  rand int b ;
  
  constraint cs1 {a < 30 ; a >10 ;}
  
  extern constraint cs2 ;
  
endclass 

constraint csname :: cs2{b>10 ; b<20;} 



module tb ;
   csname cs ;
  
  
  initial begin 
    
    cs =new();
    
    for (int i = 0 ; i<5 ; i++) begin 
      cs.randomize() ;
      
      $display("i=%0d a=%0d b=%0d " , i, cs.a, cs.b );
      
    end
  end
endmodule 
