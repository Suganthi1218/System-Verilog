
class pack ;
  
  rand bit [5:0] dyn_arr[] ;
  
  constraint dyn_arr_size { dyn_arr.size()>3 ; dyn_arr.size()<7 ;}
  
  constraint dyn_arr_el { foreach (dyn_arr[i]) 
    dyn_arr[i]==i*i ;}
endclass

module dynamic_array ;
  
  pack p;
  
  initial begin 
    
    p = new();
    
    
    for(int i=0; i<2; i++) begin 
      void'(p.randomize());
      
      $display("iteration=%0d  array=%0p",i,p.dyn_arr);
      
    end
  end
endmodule
