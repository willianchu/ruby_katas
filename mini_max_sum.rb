#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def miniMaxSum(arr)
  sorted = arr.sort()
  minSum = 0
  for i in 0..sorted.length-2
    minSum = minSum + sorted[i].to_i;
  end
  
  maxSum = 0
  for i in 1..sorted.length-1
    maxSum = maxSum + sorted[i].to_i
  end
  puts "#{minSum} #{maxSum}"
end

arr = gets.rstrip.split.map(&:to_i)

miniMaxSum arr
