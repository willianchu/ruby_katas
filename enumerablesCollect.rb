# map

[1,2,3].map { |x| 2*x }
# => [2, 4, 6]

{:a=>1, :b=>2, :c=>3}.collect { |key, value| 2*value }
# => [2, 4, 6]

# Note that these methods are different from each in the respect that these methods return a new collection while former returns the original collection, irrespective of whatever happens inside the block.

#Write a method which takes an array of strings (containing secret enemy message bits!) and decodes its elements using ROT13 cipher system; returning an array containing the final messages.

# For example, this is how ROT13 algorithm works,

# Original text:

# Why did the chicken cross the road?
# Gb trg gb gur bgure fvqr!

# On application of ROT13,

# Jul qvq gur puvpxra pebff gur ebnq?
# To get to the other side!

# REGEX solution
def rot13(secret_messages)
  secret_messages.map { |c| c.tr("a-z", "n-za-m") }
end
def rot13(secret_messages)
   secret_messages.map {|i| i.tr("n-za-m","a-z") }
end

# OR
def cypher(entry)
  chars = entry.split('')
  chars.map { |x| 
      if (x.ord >= "A".ord) && (x.ord <= "M".ord) then 
          (x.ord+13).chr  
      elsif (x.ord >= "N".ord) && (x.ord <= "Z".ord) then 
          (x.ord-13).chr 
      elsif (x.ord >= "a".ord) && (x.ord <= "m".ord) then 
          (x.ord+13).chr  
      elsif (x.ord >= "n".ord) && (x.ord <= "z".ord) then 
          (x.ord-13).chr
      else 
          x 
      end
    }.join('')
end
          
def rot13(secret_messages) 
    secret_messages.each {|phrase| cypher(phrase)}
end
 