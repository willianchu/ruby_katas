WRITTEN_VALUE = ["twenty_dollars", "ten_dollars", "five_dollars", "two_dollars", "one_dollar", "quarter", "dime", "nickel", "penny"]

VALUE_IN_CENTS = [2000, 1000, 500, 200, 100, 25, 10, 5, 1]

def calculateChange(total, cash)
  change = cash - total
  change_hash = {}
  rest = 0
  for index in (0..VALUE_IN_CENTS.length - 1)
    change_hash[WRITTEN_VALUE[index]] = change / VALUE_IN_CENTS[index]
    change = change % VALUE_IN_CENTS[index]
  end
  ignore_empty_values(change_hash)
end

def ignore_empty_values(hash)
  hash.delete_if { |k, v| v == 0 }
end

puts calculateChange(1787, 2000)
puts calculateChange(2623, 4000)
puts calculateChange(501, 1000)