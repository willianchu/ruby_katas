def scoring(array)
  array.each(&:update_score) #safe navigation operator. It will call the update_score method on each element of the array. &: avoid nil, undefined method error.
  # @person&.spouse&.name
  # instead
  # @person.spouse.name if @person && @person.spouse
  
  # array.each {|user| user.update_score}
end


