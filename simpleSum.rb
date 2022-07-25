#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'simpleArraySum' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY ar as parameter.
#

def simpleArraySum(ar)
    ar.reduce (:+)

end

# function simpleArraySum(ar) {
# 	return ar.reduce((a, b) => a + b)
# }
# OR
# {
#     |total, element| total + element 
# }

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.strip.to_i

ar = gets.rstrip.split.map(&:to_i)

result = simpleArraySum ar

fptr.write result
fptr.write "\n"

fptr.close()
