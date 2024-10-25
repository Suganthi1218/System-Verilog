
class randc_fun ;
  
  rand logic [2:0] a;
  
endclass 

module randc_ex ;
  
  randc_fun ran = new() ;
  initial 
    begin 
  
  for(int i=0; i<=6; i++) begin 
    
    ran.randomize();
    
    $display("i=%0d, a=%0d ", i, ran.a ) ;
    
  end
    end
endmodule 
