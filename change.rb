def calculateChange(total, cash)
  change = cash - total
  change_hash = {}
  change_hash[:twenty_dollars] = change / 2000
  change_hash[:ten_dollars] = (change % 2000) / 1000
  change_hash[:five_dollars] = ((change % 2000) % 1000) / 500
  change_hash[:two_dollars] = (((change % 2000) % 1000) % 500) / 200
  change_hash[:one_dollar] = ((((change % 2000) % 1000) % 500) % 200) / 100
  change_hash[:quarter] = (((((change % 2000) % 1000) % 500) % 200) % 100) / 25
  change_hash[:dime] = (((((change % 2000) % 1000) % 500) % 200) % 100) % 25 / 10
  change_hash[:nickel] = (((((change % 2000) % 1000) % 500) % 200) % 100) % 25 % 10 / 5
  change_hash[:penny] = (((((change % 2000) % 1000) % 500) % 200) % 100) % 25 % 10 % 5 / 1
  ignore_empty_values(change_hash)
end

def ignore_empty_values(hash)
  hash.delete_if { |k, v| v == 0 }
end

puts calculateChange(1787, 2000)
puts calculateChange(2623, 4000)
puts calculateChange(501, 1000)