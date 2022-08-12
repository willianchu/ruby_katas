def gradingStudents(grades)
  newGrades = []
  grades.each do |grade|
    if grade < 38
      newGrades.push grade
    else
      if grade % 5 < 3
        newGrades.push grade
      else
        newGrades.push grade + (5 - grade % 5)
      end
    end
  end
  newGrades
end