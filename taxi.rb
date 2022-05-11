def blocks_away(directions) 
  directions.each_slice(2) do |direction, distance|
    puts " #{direction} #{distance}"
  end
end

puts blocks_away(["right", 2, "left", 3, "left", 1])
puts blocks_away(["left", 1, "right", 1, "left", 1, "right", 1, "left", 1, "right", 1])
puts blocks_away(["left", 3, "right", 1, "right", 3, "right", 1])

# Expected output
# {east: 1, north: 3}
# {east: 3, north: 3}
# {east: 0, north: 0}