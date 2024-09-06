class Trans ;
  bit[31:0] data;
  bit [4:0] addr;
  bit write;
  string s;
  
  function new();
    
    data='hca;
    addr=20;
    write=1;
    s="sugan";
  endfunction
  function void display();
    $display("data=%0d",data);
    $display("addr=%0d",addr);
    $display("write=%0d",write);
    $display("string=%0s",s);
  endfunction
endclass

module class_assignment;
  
  Trans tr1,tr2;
  
 initial
   begin
     
     tr1=new();
     $display("tr1 data");
     tr1.display();
     
     tr2=tr1;
     $display("tr2 data");
     tr2.display();
     
     tr2.data='hff;
     tr2.addr=10;
     tr2.write=0;
     tr2.s="Syera";
     
     $display("tr1 data display");
     tr1.display();
     $display("tr2 data display");
     tr2.display();
     

   end
endmodule
