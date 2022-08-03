#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'circularArrayRotation' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER k
#  3. INTEGER_ARRAY queries
#

def circularArrayRotation(a, k, queries)
    # Write your code here

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

first_multiple_input = gets.rstrip.split

n = first_multiple_input[0].to_i

k = first_multiple_input[1].to_i

q = first_multiple_input[2].to_i

a = gets.rstrip.split.map(&:to_i)

queries = Array.new(q)

q.times do |i|
    queries_item = gets.strip.to_i
    queries[i] = queries_item
end

result = circularArrayRotation a, k, queries

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()