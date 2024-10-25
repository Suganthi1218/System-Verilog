
module random_value ;
  
  int a ;
  
  bit[2:0] b ;
  
  logic[1:0] c ;
  
  integer d ;
  
  int  e ;
  
 
 initial 
   begin 
     
     a=$urandom();
     
     b=$random() ;
     
     c=$urandom_range(4,7) ;
     
     d= $urandom(12) ;
     
     e=$random(6) ;
     
    // $display ("a=$random()");
//$display("Random Value of a  =  %0d",a);
//$display("-----------------------------------------------------------------------");
  
     
  
     $display("$urandom value of a=%0d ", a );
     
     $display("$random value of b=%0d ", b );
     
     $display("$urandom_range value of c=%0d ", c );

     $display("$urandom value of d=%0d ", d );
     
     $display("$random value of e=%0d ", e );


     
   end
endmodule
