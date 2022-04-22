def camel_case(text)
  camel = text.split(' ').map { |word| word.capitalize }.join
  camel[0] = camel[0].downcase
  camel
end

puts camel_case("this is a string")
puts camel_case("loopy lighthouse")
puts camel_case("supercalifragalisticexpialidocious")