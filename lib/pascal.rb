class Pascal

  def triangle(row_element)
    row_first = ([0] + row_element)
    row_last = (row_element + [0])

    row = [row_first,row_last].transpose

    row.map {|left, right| left + right}
  end

  def calculate(rows_num)
    rows_num -= 1
    pascal = [[1]]
    rows_num.times do |row|
      row_element = pascal[row]
      pascal << triangle(row_element)
    end
    pascal
  end

  def pascal_triangle(rows_num)
    calculate(rows_num).map {|num| num.join(" ").center(rows_num * 3)}
  end
end
