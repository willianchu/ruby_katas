#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def timeConversion(s)
  am_pm = s[-2..-1]
  puts am_pm
  hour = s[0..1].to_i
  if am_pm == "PM"
    hour = hour + 12
    hour = hour == 24 ? "00" : hour
  end
  puts hour
  return hour.to_s + s[2..-3]

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.chomp

result = timeConversion s

fptr.write result
fptr.write "\n"

fptr.close()
