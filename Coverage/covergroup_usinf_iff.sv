
module usingiff ;
  
  bit [2:0] a;
  bit [1:0] b;
  
  bit clk;
  always #5 clk = ~clk ;
  
  covergroup cgrp @(posedge clk ) ;
    
    coverpoint a iff (b==1 ) {bins b1 = {3} ;
                              bins b2 = {5}; }
  endgroup
  
  
  cgrp cg ;
  
  initial begin 
    cg = new();
    
    for(int i=0; i<8; i++) begin
      
      a=$random ;
      b=$random ;
      cg.sample();
      @(posedge clk);
        
      if(b==2 )
        $display("a=%d b=%d coverage = %0.2f", a,b,cg.get_inst_coverage());
      
    end
    $finish;
    
  end
endmodule
