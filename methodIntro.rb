# def prime? num
#   (2..num-1).each do |i|
#     return false if num % i == 0
#   end
#   true
# end

# (a==1) ? false:(2...a).none? {|t| a%t==0}

def prime? num
  return false if num < 2
  (2..num-1).none? { |i| num % i == 0 }
end