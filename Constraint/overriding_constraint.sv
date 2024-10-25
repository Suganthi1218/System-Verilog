class parent ;
  
  rand byte a ;
  rand byte b ;
  
  constraint c1 {a==5; b==10 ;}
endclass


class child extends parent ;
  
  constraint c1 {a==2 ; b==5;}
  
endclass


module tb ;
  
 child  B ;
  
  initial
    begin 
      
      B = new();
      
      for(int i=0; i<6;i++ ) begin 
        if(!B.randomize() ) begin 
        //B.randomize() ;
          $display("Randomization Failed") ;
          
        end
        else begin 
        $display("i=%0d a=%0d b=%0d ", i, B.a, B.b );
      end
    end
    end
endmodule
