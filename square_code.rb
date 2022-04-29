def square_root_rounded_down(number)
  Math.sqrt(number).floor
end

def without_spaces(string)
  string.gsub(/\s+/, '')
end

def format_output(array)
  newArray = []
  newLine = ""
  repeat = array.length + 1
  repeat.times do |i|
    array.each do |element|
      newLine += element[i].to_s
    end
    newArray.push(newLine)
    newLine = ""
  end
  newArray
end

def square_code(string)
  array = without_spaces(string).chars.each_slice(square_root_rounded_down(string.length)).map(&:join)
  format_output(array)
end

string = "Heres to the ones that we got
Cheers to the wish you were here, but youre not
Cause the drinks bring back all the memories
Of everything weve been through
Toast to the ones here today
Toast to the ones that we lost on the way
Cause the drinks bring back all the memories
And the memories bring back memories bring back you"

string2 = "if man was meant to stay on the ground god would have given us roots"

puts square_code(string2)

puts square_code("chill out")
puts square_code("feed the dog")
puts square_code("have a nice day")
puts square_code("if man was meant to stay on the ground god would have given us roots")