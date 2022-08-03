#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'permutationEquation' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY p as parameter.
#

def permutationEquation(p)
  p.unshift(0) # equalizate indx to start in 1
  a = Array.new
  for x in 1..p.length - 1 # remove zero
      a.push(p.find_index(p.find_index(x)))
         
  end
  a
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

p = gets.rstrip.split.map(&:to_i)

result = permutationEquation p

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()