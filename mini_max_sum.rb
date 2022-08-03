#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def miniMaxSum(arr)
  minSum = 0
  0.step{|i| minSum = minSum + arr[i].to_i; break if i > arr.size-1}
  maxSum = 0
  1.step{|i| maxSum = maxSum + arr[i].to_i; break if i > arr.size}
  puts "#{minSum} #{maxSum}"
0.step{|i| puts i ; break if i>100 }
end

arr = gets.rstrip.split.map(&:to_i)

miniMaxSum arr
