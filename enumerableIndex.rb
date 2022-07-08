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

# optimal


# solution 1
def skip_animals(animals, skip)
  animals.each_with_index { |item, index| p "#{index}:#{item}" if index >= skip }
end