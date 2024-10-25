class randc_fun ;
  
  rand int a[7:0] ;
  int i;
  constraint c1{foreach(a[i]){
    a[i]>2; a[i]<9;}}
  
endclass 

module randc_ex ;
  
  randc_fun ran = new() ;
  initial 
    begin 
  
      for(int i=0; i<8; i++) begin 
    
    if(ran.randomize()) begin
    
    $display("i=%0d, a=%0d ", i, ran.a[i] ) ;
    end
    
  end
    end
endmodule 
