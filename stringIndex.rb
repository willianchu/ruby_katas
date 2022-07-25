# It takes a fixed width string in format: SSS-XX.XX-YY.YY. SSS is a three digit serial number, XX.XX and YY.YY are two digit numbers including up to two decimal digits.
# It returns a string containing the answer in format SSS-ZZ.ZZ where SSS is the serial number of that input string, and ZZ.ZZ is the average of XX.XX and YY.YY.
# All numbers are rounded off to two decimal places.

# current answer
def serial_average fixed_string
  s = fixed_string[0,3]
  x = fixed_string[4,5].to_f
  y = fixed_string[10,5].to_f
  z = ((x + y) / 2).round(2).to_s
  return "#{s}-#{z}"
end



def serial_average(s)
  sss = s[0..2]
  x_s = s[4..8].to_f
  y_s = s[10..14].to_f

  avg = ((x_s + y_s) / 2).round(2)
  return "#{sss}-#{avg}"
end

def serial_average1(string)
  puts string
  sum = 0
  number_of_elements = -1
  head = string.split("-")[0]	
  string.split('-').each do |number|
    if number_of_elements == -1
      number_of_elements = 0  
    else
      sum += number.to_f
      number_of_elements += 1
    end
  end
  average = sum / number_of_elements
  puts "#{head}-#{average.round(2)}"
end

serial_average('002-10.00-20.00')

# simplier version
def serial_average(str)
  arr=str.split("-")
  avg = (((arr[1].to_f) + (arr[2].to_f))/2).round(2)

return "#{arr[0]}" + "-" + "#{avg}"
end

# explained
def serial_average(string)
  serial_number = string[0,3]
  first_decimal = string[4,5].to_f
  second_decimal = string[10,5].to_f
  average = (first_decimal + second_decimal) / 2
  rounded_average = average.round(2).to_s
 return "#{serial_number}-#{rounded_average}"
end

# one liner
def serial_average(string)
  "#{string[0, 4]}#{format('%.2f', (string[4, 5].to_f + string[10, 5].to_f) / 2)}"
end
