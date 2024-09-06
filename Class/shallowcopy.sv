class copy_method;

int addr;
endclass

class sample;
bit[3:0] a;
copy_method copy;
endclass

module shallowcopy;

sample t1,t2;

initial
begin
t1=new();
t1.copy=new();

t1.a=5;
t1.copy.addr='haa;

t2=new t1;

  $display("t1.a=%0d, t1.copy.addr=%0h",t1.a,t1.copy.addr);
  $display("t2.a=%0d, t2.copy.addr=%0h",t2.a,t2.copy.addr);

  t2.a=10;
  t2.copy.addr='hff;
  $display("t1.a=%0d, t1.copy.addr=%0h",t1.a,t1.copy.addr);
  $display("t2.a=%0d, t2.copy.addr=%0h",t2.a,t2.copy.addr);

  
end
endmodule
