class Pascal

  def triangle(row_element)
    row_first = ([0] + row_element)
    row_last = (row_element + [0])

    row = [row_first,row_last].transpose

    row.map {|left, right| left + right }
  end

  def triangle_row(row)
    init_num = [1]
    row.times.reduce(init_num) {|row_element| triangle(row_element)}
  end

  def calculate(rows_num)
    rows_num += 1
    result = []
    rows_num.times do |row|
      result << triangle_row(row)
    end
    result
  end

  def pascal_triangle(rows_num)
    calculate(rows_num).map {|num| num.join(" ").center(rows_num * 3)}
  end
end
