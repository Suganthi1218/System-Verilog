module Static_array;
  int arr1 [5]='{1,2,3,4,5};
  int arr2[3:0][2:0];
 initial
   begin
     arr2='{{1,10,10},{2,20,20},{3,30,30},{4,40,40}};
     
     foreach(arr1[i]) begin
       
       $display("value of arr1[%0d] = %0d",i,arr1[i]);
    end
     
      
   
     foreach(arr2[i,j]) begin
       
       $display("value of arr2[%0d][%0d] = %0d",i,j,arr2[i][j]);
 end
end
endmodule
