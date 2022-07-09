def caesar_cipher(string, shift = 1)
  lowerAlphabet   = Array('a'..'z')
  upperAlphabet   = Array('A'..'Z')
  lowerEncrypter  = Hash[lowerAlphabet.zip(lowerAlphabet.rotate(shift))] # zip unions two arrays
  upperEncrypter  = Hash[upperAlphabet.zip(upperAlphabet.rotate(shift))] # creates a hash with the two arrays as keys and values
  
  string.chars.map {
     |c| c.ord > 64 && c.ord < 91 ? 
       upperEncrypter.fetch(c, " ") : # fetch returns the value associated with the key
       c.ord > 96 && c.ord < 123 ? 
         lowerEncrypter.fetch(c, " ") : # " " it's for not return nil if the key is not found
         c 
    }.join('')
end

p caesar_cipher("ABCDEF abcdef 123754") 