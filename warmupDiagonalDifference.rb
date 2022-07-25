#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr)
  length = arr.length - 1
  first_diagonal = 0
  second_diagonal = 0
  for i in 0..length do
   first_diagonal += arr[i][i]
   second_diagonal += arr[i][lenlength - i]
  end
  (sfirst_diagonal - second_diagonal).abs()
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end

result = diagonalDifference arr

fptr.write result
fptr.write "\n"

fptr.close()
