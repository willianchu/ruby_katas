def sum_terms(n)
  (1..n).reduce(0) {|sum, val| sum += (val * val + 1)}
end

 (5..10).inject(1) {|product, n| product * n }
# => 151200

(5..10).reduce(1, :*)   # :* is shorthand for multiplication
# => 151200