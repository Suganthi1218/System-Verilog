
class test ;
  
  int a ;
  rand logic [2:0] b ;
 // constraint c1 { a>=3 ; a<= 12 ;} 
  
  function void display() ;
    
    int c ;
    
    
    if(std :: randomize(this) ) 
      $display("randomize(a, b, c) %0d,%0d,%0d", a,b,c );
    
    if(randomize(a) ) 
      $display("randomize(a) %0d", a );
    
    if(std :: randomize(a) ) 
      $display("stdrandomize(b) %0d", b );
    
    if(randomize(b) ) 
      $display("randomize(b) %0d", b );
    
    if(std :: randomize(b) ) 
      $display("stdrandomize(b) %0d", b );

    
//     if(randomize(c) ) 
//       $display("randomize(c) %0d", c );
    
    if(std :: randomize(c) ) 
      $display("stdrandomize(c) %0d", c);

    
  endfunction 
  
endclass 
