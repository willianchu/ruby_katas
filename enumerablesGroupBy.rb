marks = {"Ramesh":23, "Vivek":40, "Harsh":88, "Mohammad":60}



def group_by_marks(marks, pass_marks)
  marks.group_by { |name, marks| marks >= pass_marks ? "Aprov" : "Failed" }
end

puts group_by_marks(marks, 30)
# {"Failed"=>[["Ramesh", 23]], "Passed"=>[["Vivek", 40], ["Harsh", 88], ["Mohammad", 60]]}