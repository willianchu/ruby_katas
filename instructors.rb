def instructorWithLongestName(instructors)
  instructors.max_by { |instructor| instructor["name"].length }
end	

def usingLoopLongestName(instructors)
  longest_name = ""
  instructors.each do |instructor|
    if instructor["name"].length > longest_name.length
      longest_name = instructor["name"]
    end
  end
  instructors.find { |instructor| instructor["name"] == longest_name }
end

def usingLoopIndex(instructors)
  longest_name = ""
  longest_index = 0
  instructors.each_with_index do |instructor, index|
    if instructor["name"].length > longest_name.length
      longest_name = instructor["name"]
      longest_index = index
    end
  end
  instructors[longest_index]
end

array1 = [
  {"name"=>"Samuel", "course"=>"iOS"},
  {"name"=>"Jeremiah", "course"=>"Web"},
  {"name"=>"Ophilia", "course"=>"Web"},
  {"name"=>"Donald", "course"=>"Web"}
]
array2 = [
  {"name"=>"Matthew", "course"=>"Web"},
  {"name"=>"David", "course"=>"iOS"},
  {"name"=>"Domascus", "course"=>"Web"}
]

puts instructorWithLongestName(array1)
puts instructorWithLongestName(array2)
puts usingLoopLongestName(array1)
puts usingLoopLongestName(array2)
puts usingLoopIndex(array1)
puts usingLoopIndex(array2)

