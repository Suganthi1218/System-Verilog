module queue_example;
  
  
  int que1[$];
  string s[$];
  
  initial
    begin
      
      que1='{0,1,2,3,4,5};
      
      s={"suganthi","sudha","syeraziyavarman","akash","kavi"};
      
      $display("value of que1 is ",que1);
     
      $display("size of the que is =%0d", que1.size());
      
      que1.insert(3,6);
      $display("after inserting the value is", que1);
      
       que1.delete(3);
      $display("after deleting the value is", que1);
      
      que1.delete();
      $display("after deleting all the value is", que1);
       $display("size of the que is =%0d", que1.size());
      
      
      $display("values os string is ", s);
      
      $display("size of the string is=%0d ",s.size());
      
      s.push_front("Sura");
      $display("insert the value is " , s);
      
      s.push_back("Sara");
      $display("insert the value is " , s);
      
     
      $display("after pop_front  value is " ,  s.pop_front());
      
      $display("after pop_back value is " , s.pop_back());
      $display("value of sting  is",s);
      s.insert(2,"sss");
      $display("value of string is ",s);
      $display("size is=%0d",s.size());
      
    end
endmodule
      
