# It takes a fixed width string in format: SSS-XX.XX-YY.YY. SSS is a three digit serial number, XX.XX and YY.YY are two digit numbers including up to two decimal digits.
# It returns a string containing the answer in format SSS-ZZ.ZZ where SSS is the serial number of that input string, and ZZ.ZZ is the average of XX.XX and YY.YY.
# All numbers are rounded off to two decimal places.

def serial_average(string)
  puts string
  sum = 0
  number_of_elements = -1
  string.split('-').each do |number|
    if number_of_elements == -1
      number_of_elements = 0  
    else
      sum += number.to_f
      number_of_elements += 1
    end
  end
  average = sum / number_of_elements
  puts "002-#{average.round(2)}"
end

puts serial_average('002-10.00-20.00')