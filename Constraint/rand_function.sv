
class rand_function ;
  
  rand reg [3:0] a ;
 // rand logic[3:0] a ;
  
endclass 


rand_function rf ;


module random_value ;
 
  
  initial
    begin 
      
      rf = new() ;
  
      for( int  i=0; i<=10 ; i++ ) begin 
        
        rf.randomize();
        
         
        $display("i=%0d,  a= %0d ", i,rf.a ) ;
      end
     
      
    end
endmodule 
