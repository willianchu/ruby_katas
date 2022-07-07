
p 123456.to_s.reverse.to_i

require 'prime'

# n = gets.to_i
n = 10
p Prime.each.lazy.select{|x| x == x.to_s.reverse.to_i}.first(n)