
module array_find;
  
  string array[6]= {"Ariyalur", "Perambalur", "Trichy", "Chennai", "Pattukottai", "Tanjore"};
  
  string result[$];
  
  string check;
  int a[$];
  
  initial
    begin
      $display("array value is=%p",array);
      result = array.find(check) with (check>"Perambalur");
      
      $display("array find value is =%p",result);
      
      a = array.find_index(check) with (check=="Ariyalur");
      
      $display("array find_index  value is =%p",a);
      
      
      a = array.find_index(check) with (check=="Trichy");
      
      $display("array  find_index value is =%p",a);
      
      result= array.find_first(check) with (check<"Perambalur" & check>="Trichy");
    
      $display("array find_first value is =%p",result);
      
      a = array.find_first_index(check) with (check < "Pattukottai");
      $display("value of find_first_index is=%p",a);

      result = array.find_last(check) with (check <"Tanjore");
 
      $display("value of find_last is=%p",result);
      
      a = array.find_last_index(check) with (check < "Chennai");
      $display("value of find_last_index is=%p", a);
      
    end
endmodule
