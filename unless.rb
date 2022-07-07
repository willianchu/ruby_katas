# unless user.is_admin?
#   user.update_score
# end
# or

# user.update_score unless user.is_admin? 

def scoring(array)
  array.each do |user|
    user.update_score unless user.is_admin?
  end
end