module associative_array;
  
  int a[*];
  
  string s[string];
  
 initial
   begin 
     
     a='{10:1, 20:2, 30:3, 40:4, 50:5};
     
     s='{"Names" : "Syera","Ziya":"Varman","Sudha" : "Sugan"};
     
     
     $display("value of a =%0d",a[10]);
     $display("value of string =%s",s["Names"]);
     
   end
endmodule
