combination = -> (n) do
  -> (r) do
      (n-r+1..n).inject(:*) / (1..r).inject(:*)
  end
end

n = gets.to_i
r = gets.to_i
nCr = combination.(n)
puts nCr.(r)


# act like reduce
[5, 6, 7, 8].inject (0) { |result_memo, object| result_memo + object }
# output 26

#Sum an Array Using the Inject Method in Ruby
numbers = [5, 6, 7, 8]
sum = numbers.inject (0) { |result, item| result + item }
puts sum

#output 26


#Build a Hash from an Array Using the Inject Method in Ruby
students = [["John", "Grade 2"], ["Michael", "Grade 3"], ["Stephen", "Grade 4"]]
students_hash = students.inject({}) do |result, item|
  result[item.first] = item.last
  result
end

p students_hash
# Output:
# {"John"=>"Grade 2", "Michael"=>"Grade 3", "Stephen"=>"Grade 4"}

#Filter an Array Using the Inject Method in Ruby
numbers = [1, 2, 3, 4, 5, 6, 7]
even_numbers = numbers.inject([]) do |result, element|
  result << element if element.even? # push
  result
end

p even_numbers
# Output:
# [2, 4, 6]

#inject and reduce are the same (alias)
# Sum some numbers
(5..10).reduce(:+)                             #=> 45
# Same using a block and inject
(5..10).inject { |sum, n| sum + n }            #=> 45
# Multiply some numbers
(5..10).reduce(1, :*)                          #=> 151200
# Same using a block
(5..10).inject(1) { |product, n| product * n } #=> 151200
# find the longest word
longest = %w{ cat sheep bear }.inject do |memo, word|
   memo.length > word.length ? memo : word
end
longest                                        #=> "sheep"




#build hash

[[:student, "Terrance Koar"], [:course, "Web Dev"]].inject({}) do |result, element| 
  result[element.first] = element.last 
  result
end
#=> {:student=>"Terrance Koar", :course=>"Web Dev"}

#build array inside hash with split
[[:student, "Terrance Koar"], [:course, "Web Dev"]].inject({}) do |result, element| 
  result[element.first.to_s] = element.last.upcase
  result
end
# => {"student"=>"TERRANCE KOAR", "course"=>"WEB DEV"}
OR
[[:student, "Terrance Koar"], [:course, "Web Dev"]].inject({}) do |result, element| 
  result[element.first.to_s] = element.last.split
  result
end
# => {"student"=>["Terrance", "Koar"], "course"=>["Web", "Dev"]}

#act as filter
[10, 20, 30, 5, 7, 9, 3].inject([]) do |result, element| 
  result << element.to_s if element > 9
  result
end
# => ["10", "20", "30"]


#version 1
[1,2,3].reduce {|a,b| a + b} # => 6
#Version 2
[1,2,3].reduce(0, :+) # => 6
#version 3
[1,2,3].reduce(:+) # => 6
