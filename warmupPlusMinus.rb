#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr)
  positive_elements = 0
  negative_elements = 0
  neutral_elements = 0
  length = arr.length
  arr.each { |element|
      
      if element > 0
          positive_elements += 1
      elsif element < 0
          
          negative_elements += 1
      else
          neutral_elements += 1
      end
  }
  puts '%1.6f' % (positive_elements.to_f / length)
  puts '%1.6f' % (negative_elements.to_f / length)
  puts '%1.6f' % (neutral_elements.to_f / length)
end

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

plusMinus arr
