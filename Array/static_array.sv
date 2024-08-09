module static_array;
  
  bit a[3:0];
  bit [3:0] defa[4]='{default : 4'h8};
  bit [3:0] defb[3:0]='{4{1}};
initial
  begin
    
    foreach(a[i])begin
      $display("default value of a[%0d] is =%0d",i);
    end
    
    foreach(defa[i])begin
      $display("value of defa[%0d] is =%0d",i,defa[i]);
    end
    
    foreach(a[i])begin
      $display("value of defb[%0d] is =%0d",i,defb[i]);
    end
    
  end
endmodule
