
class static_arr_constraint;
  rand bit[3:0] array[3][3][3];
endclass

module static_array;
  static_arr_constraint stacon;

  initial begin
    stacon = new();

    $display("Before Randomization:");
    foreach (stacon.array[i, j, k]) begin
      $display("a[%0d][%0d][%0d] = %0d", i, j, k, stacon.array[i][j][k]);
    end

    if (stacon.randomize()) begin
      $display("\nAfter Randomization:");
      foreach (stacon.array[i, j, k]) begin
        $display("a[%0d][%0d][%0d] = %0d", i, j, k, stacon.array[i][j][k]);
      end
    end else begin
      $display("Randomization failed.");
    end
  end
endmodule
