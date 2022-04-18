# Date format YYYY/MM/DD

def talking_calendar(date)
  year = date.split("/").values_at(0)
  month = date.split("/").values_at(1)
  day = date.split("/").values_at(2)
  answer = "#{month_name(month)} #{remove_leading_zero(day.join)}#{ordinary_number(day.join)}, #{year.join}"

end

def remove_leading_zero(number)
  number.to_i
end

def ordinary_number(day)
  if day[-1] == "1"
    return "st"
  elsif day[-1] == "2"
    return "nd"
  elsif day[-1] == "3"
    return "rd"
  else
    return "th"
  end
end

def month_name(month)
  month_table = { "01" => "January", "02" => "February", "03" => "March", "04" => "April", "05" => "May", "06" => "June", "07" => "July", "08" => "August", "09" => "September", "10" => "October", "11" => "November", "12" => "December" }
  return month_table[month.join]
end

puts talking_calendar("2017/12/02") # -> December 2nd, 2017
puts talking_calendar("2007/11/11") # -> November 11th, 2007
puts talking_calendar("1987/08/24") # -> August 24th, 1987
puts talking_calendar("2015/01/13") # -> January 13th, 2015
puts talking_calendar("2000/02/29") # -> February 29th, 2000
puts talking_calendar("2016/07/20") # -> July 20th, 2016
puts talking_calendar("2007/05/10") # -> May 10th, 2007
