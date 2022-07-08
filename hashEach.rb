# On Hash, it works in two ways.
# 1. Hash.each
user = {"viv" : 10, "simmy" : 20, "sp2hari" : 30}

# Using each, each element can be iterated as

user.each do |key, value|
    # some code on individual key, value
end
# or

user.each do |arr|
    # here arr[0] is the key and arr[1] is the value
end


## Solution

def iter_hash(hash)
  # your code here
  hash.each do |key, value|
      puts key
      puts value
  end
end

## solution 2

hash.each { |p| puts p }
