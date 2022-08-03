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
  hour = s[0..1].to_i
  if hour == 12
      hour = am_pm == "AM" ? "00" : "12"
  elsif am_pm == "PM"
      hour += 12  
  end
  return hour.to_s + s[2..-3]
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.chomp

result = timeConversion s

fptr.write result
fptr.write "\n"

fptr.close()
