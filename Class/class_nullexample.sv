class Trans;
  bit[3:0] data;
  int id;
  
endclass

module class_nullexample;
  
  Trans tr1,tr2;
  
initial
  begin
    tr1=new();
 tr1.data=10;
 tr1.id=4;
    $display("value of tr1 data is data=%0h, and id =%0d", tr1.data, tr1.id);
    if(tr2 !=null)begin
       tr2.data=5;
       tr2.id=3;
    $display("value of tr2 is data=%0d and id=%0d", tr2.data,tr2.id);
    end
    else
      $display("not create memory");
    end
  
  
endmodule
