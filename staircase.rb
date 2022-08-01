#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'staircase' function below.
#
# The function accepts INTEGER n as parameter.
#
def repeatChar (symbol, number)
    result = ""
    number.times { result += symbol }
    result
end

def staircase(n)
    for i in 1..n
        spaces = repeatChar(' ', (n - i))
        blocks = repeatChar('#', i)
        puts "%s%s" % [spaces, blocks]
    end

end


n = gets.strip.to_i

staircase n


# Version 2

def stair(spaces, hashes)
  " " * spaces + "#" * hashes
end

n = gets.to_i

for i in 1..n do
  puts stair(n - i, i)
end

# Final Version

def staircase(n)
  for i in 1..n 
      puts  " " * (n - i) + "#" * i
  end
end
