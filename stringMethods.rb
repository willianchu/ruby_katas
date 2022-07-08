# search and replace portions of the string based on a text or pattern.

# String.include?(string) - Returns true if str contains the given string or character. Very simple!

"hello".include? "lo"   #=> true  
"hello".include? "ol"   #=> false  

# String.gsub(pattern, <hash|replacement>) - Returns a new string with all the occurrences of the pattern substituted for the second argument: . The pattern is typically a Regexp, but a string can also be used.

"hello".gsub(/[aeiou]/, '*')  #=> "h*ll*"
"hello".gsub(/([aeiou])/, '') #=> "hll"

# Either method will depend upon the problem you are trying to solve, and the nature of input-output behavior you desire.

# mask_article which appends strike tags around certain words in a text. The method takes 2 arguments: A string and an array of words. It then replaces all the instances of words in the text with the modified version.

# A helper method strike, given one string, appends strike off HTML tags around it. The strike off HTML tag is <strike></strike>.

# ! EXCLAMATION alter the string in original instead of creating a new one.


strike("Meow!") # => "<strike>Meow!</strike>"
mask_article("Hello World! This is crap!", ["crap"])
strike("Foolan Barik") # => "<strike>Foolan Barik</strike>"
# "Hello World! This is <strike>crap</strike>!"

# Apply the helper method in completing your main method.

#solution
def strike str
  "<strike>*{str}</strike>"
end

def mask_article(str, arr)
  arr.each {|nw| str.gsub!(nw, strike(nw))}
  str
end



# solution pattern
def strike(word)
  "<strike>#{word}</strike>"
end
def mask_article(text, words)
  pattern = words.join("|")
  text.gsub(/#{pattern}/) {|match| strike(match)}
end

# similar
def strike(word)
  "<strike>#{word}</strike>"
end

def mask_article(string, words)
  words.each do |word|
    string.gsub!(word, strike(word))
  end

  string
end

#solution 1

def mask_article (text ,array) 
  array.each do | word |
      text.gsub!(word, strike(word)) if text.include? word
  end
  text
end


