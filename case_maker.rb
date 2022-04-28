def head(string)
  string[0]
end

def tail(string)
  string[1..-1]
end

def title(string)
  string.downcase.split(' ').map(&:capitalize).join(' ')
end

def remove_spaces(string)
  string.gsub(' ', '')
end

def pascal(string)
  remove_spaces(title(string))
end

def camel(string)
  head(string) + tail(pascal(string)) 
end

def uppercase_all_vowels(string)
  string.downcase.gsub(/[aeiou]/, &:upcase)
end

def uppercase_all_consonants(string)
  string.downcase.gsub(/[^aeiou]/, &:upcase)
end

def make_case(input, list_type)

  case_type = list_type.is_a?(Array) ? list_type : [list_type]

  case_type.each do |type|
    case type 
    when 'snake'
      input.gsub(' ', '_').downcase
    when 'kebab'
      input.gsub(' ', '-').downcase
    when 'camel'
      camel(input)
    when 'title'
      title(input)
    when 'pascal'
      pascal(input)
    when 'vowel'
      uppercase_all_vowels(input)
    when 'consonant'
      uppercase_all_consonants(input)
    end
  end
end

print "camel:"
puts make_case("this is a string", "camel")
print "Pascal:"
puts make_case("this is a string", "pascal")
print "snake:"
puts make_case("this is a string", "snake")
print "kebab:"
puts make_case("this is a string", "kebab")
print "title:"
puts make_case("this is a string", "title")
print "vowel:"
puts make_case("this is a string", "vowel")
print "consonant:"
puts make_case("this is a string", "consonant")

puts make_case("this is a string", ["upper", "snake"])

# Expected Output
# thisIsAString camel
# ThisIsAString pascal
# this_is_a_string snake
# this-is-a-string kebab
# This Is A String
# thIs Is A strIng
# THiS iS a STRiNG
# THIS_IS_A_STRING