class Trans;
  
  bit[3:0] data;
  int id;
  
  function new(bit[3:0] m_data);
    $display("inside constructor");
    data=m_data;
  endfunction
  
  task update(bit[3:0] m_data,int m_id);
    
    data=m_data;
    id=m_id;
  endtask
  function print(Trans tr);
    $display("value of data=%0h and id=%0d", tr.data, tr.id);
 endfunction
  
endclass

module class_example;
  
  Trans tr;
  initial
    begin
  tr=new(5);
      $display("value of module data=%h",tr.data);
      tr.update(20,2);
  tr.print(tr);
  
    end
endmodule
  
