# solving the problem withouth using the sum method or other helper methods like odd or even

def conditionalSum(array, condition)
  answer = 0
  array.each do |element|
    if the_number_is(condition, element)
      answer += element
    end
  end
  answer
end

def the_number_is(option, number)
  rest = number % 2
  if option == 'even'
    rest == 0 ? true : false
  elsif option == 'odd'
    rest == 0 ? false : true
  else
    nil
  end
end

puts conditionalSum([1, 2, 3, 4, 5], "even")
puts conditionalSum([1, 2, 3, 4, 5], "odd")
puts conditionalSum([13, 88, 12, 44, 99], "even")
puts conditionalSum([], "odd")