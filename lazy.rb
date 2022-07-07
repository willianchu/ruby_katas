# Lazy evaluation is an evaluation strategy that delays the assessment of an expression until its value is needed.

# Ruby  introduced a lazy enumeration feature. Lazy evaluation increases performance by avoiding needless calculations, and it has the ability to create potentially infinite data structures.

# Example:

power_array = -> (power, array_size) do 
    1.upto(Float::INFINITY).lazy.map { |x| x**power }.first(array_size) 
end

puts power_array.(2 , 4)    #[1, 4, 9, 16]
puts power_array.(2 , 10)   #[1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
puts power_array.(3, 5)     #[1, 8, 27, 64, 125]

#solution 1

def prime?(x)
  return false if x == 1 
  return true if x < 4
  m = (x**0.5).to_i
  (2..m).none? { |div| x % div == 0 }
end

def  palindromic?(x)
  x.to_s == x.to_s.reverse and prime?(x)
end

n = gets
p 1.upto(Float::INFINITY).lazy.select { |x| palindromic?(x) }.first(n.to_i)

# optimized
require 'prime'

n = gets.to_i
p Prime.each.lazy.select{|x| x == x.to_s.reverse.to_i}.first(n)

# Prime numbers are only divisible by themselves and 1.
# select method returns an array of prime numbers.
# first method returns the first n prime numbers.
# reverse method returns the string in reverse order.

p (1..10).to_a

# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p "#{1}" # This calls 1.to_s for you, even if you don’t see it.


"aaaaaa".to_i
# 0


p [1,2,3].join(",")

# Array wrapper class
Array(nil)
# []
Array([])
# []
Array(1)
# [1]
Array("")
# [""]


# Integer wrapper
Integer(1)
# 1
Integer("25")
# 25
Integer("abc123")
# ArgumentError (invalid value for Integer(): "abc123")
Integer([])
# TypeError (can't convert Array into Integer)

#hash wrapper
Hash[[["a", 1], ["b", 2], ["c", 3]]]
# {"a"=>1, "b"=>2, "c"=>3}