module queue_data_type;


int queue1[$];

initial 
begin

  queue1 = '{2,7,1,9,9,7};

  $display("queue1:%0p",queue1);


  
  $display("The size of queue1: %p", queue1.size());

  queue1.delete(0);
  
  $display(" After Deleting  value  queue1: %p", queue1);

  queue1.insert(0, 2);
  $display("After insert the array element queue1: %p", queue1);
  $display("");
end

endmodule
