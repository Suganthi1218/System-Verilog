module function_example;
 
  
  function compare(input int a,b);
    if(a>b) 
      $display("a is greaterthen b");
    else if (a<b)
      $display("a is lessthan b");
     else 
       $display("a is equal to b");
   // return=1;
  endfunction
                
                
 initial
   begin
     compare(2,4);
     compare(6,5);
     compare(2,2);
   end
endmodule  
