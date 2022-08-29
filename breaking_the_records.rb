#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'breakingRecords' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY scores as parameter.
#

def breakingRecords(scores)
    # Write your code here

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

scores = gets.rstrip.split.map(&:to_i)

result = breakingRecords scores

fptr.write result.join " "
fptr.write "\n"

fptr.close()