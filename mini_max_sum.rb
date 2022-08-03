#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#
def sum_array(arr)
  arr.inject(:+)
end

def miniMaxSum(arr)
  sorted = arr.sort()
  minSum = sum_array(sorted[0..-2])
  maxSum = sum_array(sorted[1..-1])
  puts "#{minSum} #{maxSum}"
end

arr = gets.rstrip.split.map(&:to_i)

miniMaxSum arr
