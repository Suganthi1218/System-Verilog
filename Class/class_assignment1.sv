
class Trans ;
  bit[3:0] data;
endclass

module class_assignment;
  
  Trans tr1,tr2,tr3,tr4;
  
 initial
   begin
     
     tr1=new();
     tr1.data=10;
     tr2=tr1;
     $display("tr1.data=%0d",tr1.data);                  
     $display("tr2.data=%0d",tr2.data);
     
     tr2.data=15;
     $display("tr1.data=%0h",tr1.data);
     $display("tr2.data=%0h",tr2.data);
     
     
   end
endmodule
