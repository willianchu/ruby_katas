#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def miniMaxSum(arr)
    minSum = 0.step{|i| minSum += arr[i]; break if i > arr.size-1}
    maxSum = 1.step{|i| maxSum += arr[i]; break if i > arr.size}
    puts "#{minSum} #{maxSum}"

end

arr = gets.rstrip.split.map(&:to_i)

miniMaxSum arr
