class base_class;
  string fan,switch;

  function void display();
    switch="ON";
    $write("switch is %s " ,switch);
  endfunction
endclass

class sub_class extends base_class;
 string fan="ON";
  function void display();
    super.display;
    $display(" that's why fan is %s " ,fan);
  endfunction 
endclass

sub_class s1;

module super_ex;
initial begin
  s1 =new();
  s1.display;
end
endmodule

