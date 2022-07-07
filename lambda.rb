# Lambdas are anonymous functions. class Proc.
# simple lambda example
#Ruby version <= 1.8
# lambda { .... } 

# lambda do
#     ....
# end

# #Ruby version >= 1.9, "stabby lambda" syntax is added
# -> { .... }

# -> do
#     ....
# end

# with no arguments
# def area (l, b)
#   -> { l * b } #<<<<<<<<<<<<<<<< anonymous function
# end

# x = 10.0; y = 20.0

# area_rectangle = area(x, y).call
# area_triangle = 0.5 * area(x, y).()

# puts area_rectangle     #200.0
# puts area_triangle      #100.0

#with Arguments
# area = ->(a, b) { a * b } #<<<<<<<<<<<<<<<

# x = 10.0; y = 20.0

# area_rectangle = area.(x, y)
# area_triangle = 0.5 * area.call(x, y)

# puts area_rectangle     #200.0
# puts area_triangle      #100.0   



# Write a lambda which takes an integer and square it
square      = -> (side) { side * side} 

# Write a lambda which takes an integer and increment it by 1
plus_one    = -> (value) { value + 1 }

# Write a lambda which takes an integer and multiply it by 2
into_2      = -> (double_this) { double_this * 2 }  

# Write a lambda which takes two integers and adds them
adder       = -> (first, second) { first + second}

# Write a lambda which takes a hash and returns an array of hash values
values_only = -> (f){f.values}

input_number_1 = gets.to_i
input_number_2 = gets.to_i
input_hash = eval(gets)

a = square.(input_number_1); b = plus_one.(input_number_2);c = into_2.(input_number_1); 
d = adder.(input_number_1, input_number_2);e = values_only.(input_hash)

p a; p b; p c; p d; p e