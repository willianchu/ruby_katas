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
    maximum = scores [0]
    minimum = scores[0]
    min_count = 0
    max_count = 0
    scores.each do |score|
        if score > maximum
            maximum = score
            max_count += 1
        elsif score < minimum
            minimum = score
            min_count += 1
        end
    end
    [max_count, min_count]
end




fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

scores = gets.rstrip.split.map(&:to_i)

result = breakingRecords scores

fptr.write result.join " "
fptr.write "\n"

fptr.close()