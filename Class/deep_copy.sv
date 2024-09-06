class copy_method;

int addr;
endclass

class sample;
bit[4:0] a;
copy_method copy;


  function deep_copy(copy_method ins);

copy = new ins;
endfunction
endclass


module deep_copy;

sample t1,t2;
initial
begin
t1=new();
t1.copy=new();

t1.a=5;
t1.copy.addr='hff;
t2=new t1;
t2.deep_copy(t1.copy);

$display("t1.a=%0d, t1.copy.addr=%0h",t1.a,t1.copy.addr);
$display("t2.a=%0d, t2.copy.addr=%0h",t2.a,t2.copy.addr);
    t2.a=8;
  t2.copy.addr='hf1;
  $display("t1.a=%0d, t1.copy.addr=%0h",t1.a,t1.copy.addr);
$display("t2.a=%0d, t2.copy.addr=%0h",t2.a,t2.copy.addr);
end
endmodule
