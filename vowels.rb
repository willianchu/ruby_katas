def numberOfVowels(string)
  string.downcase.scan(/[aeiou]/).count
end