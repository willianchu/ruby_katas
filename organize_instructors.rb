def organize_instructors(instructors)
  course = {}
  instructors.each do |instructor|
    if course.has_key?(instructor["course"])
      course[instructor["course"]] << instructor["name"]
    else
      course[instructor["course"]] = [instructor["name"]]
    end
  end
  course
end



puts organize_instructors([
  {"name"=>"Samuel", "course"=>"iOS"},
  {"name"=>"Victoria", "course"=>"Web"},
  {"name"=>"Karim", "course"=>"Web"},
  {"name"=>"Donald", "course"=>"Web"}
])
puts organize_instructors([
  {"name"=>"Brendan", "course"=>"Blockchain"},
  {"name"=>"David", "course"=>"Web"},
  {"name"=>"Martha", "course"=>"iOS"},
  {"name"=>"Carlos", "course"=>"Web"}
])