#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'compareTriplets' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER_ARRAY b
#

def compareTriplets(a, b)
  score_A = 0
  score_B = 0
  for i in 0..2 do
      if a[i] > b[i]
          score_A += 1
      elsif a[i] < b[i]
          score_B += 1    
      end
  end
  puts "#{score_A} #{score_B}" 
end


fptr = File.open(ENV['OUTPUT_PATH'], 'w')

a = gets.rstrip.split.map(&:to_i)

b = gets.rstrip.split.map(&:to_i)

result = compareTriplets a, b

fptr.write result.join " "
fptr.write "\n"

fptr.close()