def order_values(array)
  array.sort! { |a, b| b.to_i <=> a.to_i }
end

def sum_two_largest_numbers(array)
  order_values(array)
  array[0].to_i + array[1].to_i
end

sequence_01 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
sequence_02 = [1,10]
sequence_03 = [1, 2, 3]
sequence_04 = [10, 4, 34, 6, 92, 2]

puts "sequence_01 SUM: #{sum_two_largest_numbers(sequence_01)}" # => 19
puts "sequence_02 SUM: #{sum_two_largest_numbers(sequence_02)}" # => 11
puts "sequence_03 SUM: #{sum_two_largest_numbers(sequence_03)}" # => 5
puts "sequence_04 SUM: #{sum_two_largest_numbers(sequence_04)}" # => 126
