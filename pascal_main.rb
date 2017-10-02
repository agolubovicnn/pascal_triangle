require_relative '../pascal'

puts "Please enter number of rows!"
rows_num = gets.to_i
pascal = Pascal.new
puts "Pascals Triangle of number #{rows_num} is:"
puts pascal.pascal_triangle(rows_num)
