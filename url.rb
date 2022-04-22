def urlEncode(text)
  # text.strip.gsub(/\s/, '%20')
  text.strip.gsub(/[[:space:]]/, '%20')
end

puts urlEncode("Lighthouse Labs")
puts urlEncode(" Lighthouse Labs ")
puts urlEncode("blue is greener than purple for sure")

# strip()
# you can .delete() characters from a string
# you can .gsub() characters in a string
# you can .gsub!() characters in a string

# \\ – single backslash
# \a – alert
# \t – Tab
# \r – Carriage return
# \s – Space
# \b – backspace
# \n – newline
