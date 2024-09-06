//module enum_ex;
 // typedef enum{street[3:7]} strnum_e;
  //strnum_e str;
  //initial
   // begin
      
     // $display("Element is %s and the values are %0d", str.name(),str);
     // str=street5;
      
  //$display("Element is %s and the values are %0d", str.name(),str);
   // end
//endmodule

module set_value_enum;
  
   enum {monday=1, tuesday, wednesday=3, thursday=4, friday,saturday,sunday=7} days;
  
  
  initial
    begin
      days= days.first;
      $display("Day is %s and value %0d", days.name(),days);
      //$display(" ");
      for(int i=0;i<=6;i=i+1) begin
         $display("Day is %s and value %0d", days.name(),days);
        days=days.next;
        
    end
    end
endmodule
