# working with nested array
def repeating_word(word, times)
  word.to_s * times
end

def repeating_numbers(array)
  answer = []
  array.map do |element|
    answer.push(repeating_word(element[0], element[1]))
  end
  answer
end

def answer_with_commas(array)
  array.join(', ')
end

array_01 = [[1,10]]
array_02 = [[1,2], [2,3]]
array_03 = [[10,4], [34,6], [92,2]]

puts answer_with_commas(repeating_numbers(array_01)) 
puts answer_with_commas(repeating_numbers(array_02))
puts answer_with_commas(repeating_numbers(array_03))
