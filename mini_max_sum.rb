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
  for i in 0..arr.length-1
    minSum = minSum + arr[i].to_i;  
  end
  
  maxSum = 0
  1.step{|i| maxSum = maxSum + arr[i].to_i; break if i > arr.size}
  puts "#{minSum} #{maxSum}"
end

arr = gets.rstrip.split.map(&:to_i)

miniMaxSum arr
