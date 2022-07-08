# each_with_index which allows you to iterate over items along with an index keeping count of the item.

# For example,

colors = ['red', 'green', 'blue']
colors.each_with_index { |item, index| p "#{index}:#{item}" }
# "0:red"
# "1:green"
# "2:blue"
# As you can note, the counting of items starts from 0.

# skip_animals method that takes an animals array and a skip integer and returns an array of all elements except first skip number of items as shown in the example below.

# For example,

skip_animals(['leopard', 'bear', 'fox', 'wolf'], 2)
# =["2:fox", "3:wolf"]
# It is guaranteed that number of items in animals array is greater than the value of skip.

# first try
def skip_animals(animals, skip)
  animals.map.with_index { |v, i| "#{i}:#{v}" }.drop(skip) # drop instead shift
end

# solution 1.1
def skip_animals(animals, skip)
  animals.map.with_index{|a, index| "#{index}:#{a}" if index >= skip}.compact #compact removes nil values
end

#similar
def skip_animals(animals, skip)
  results = []
  animals.drop(skip).each_with_index do |animal, i|
      results << "#{i+skip}:#{animal}"
  end
  results
end
