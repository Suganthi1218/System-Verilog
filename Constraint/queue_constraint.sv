class pack ;
  
  rand bit [2:0] que[$] ;
  
  constraint co { que.size()== 4 ;}
  
endclass

module queue_const;
  
  pack p = new();
  initial begin 
  
    void'(p.randomize());
    
  for(int i=0; i<p.que.size(); i++) begin 
    $display("iteration =%0d array=%0p", i,p.que[i]);
  end
  end
endmodule 
