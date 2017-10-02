class Pascal
  def fact(n)
    (1..n).reduce(1, :*)
  end

  def bin_element(n, k)
    fact(n)/(fact(k) * fact(n-k))
  end

  def calculate(rows_num)
    rows_num += 1
    pascal = []
    rows_num.times do |row|
      result = []
      row.times do |row_element|
        result << bin_element(row, row_element)
      end
      result << 1
      pascal << result
    end
    pascal
  end

  def pascal_triangle(rows_num)
    calculate(rows_num).map {|num| num.join(" ")}
  end
end
