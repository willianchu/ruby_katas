# There are three kinds of possible vehicles: regular cars, small cars, and motorcycles.

# Regular cars can only park in R spots.
# Small cars can park in R or S spots.
# Motorcycles can park in R, S, or M spots.

def size_of(vehicle)
  case vehicle
  when 'regular'
    'R'
  when 'small'
    'RS'
  when 'motorcycle'
    'RSM'
  else
    'X'
  end
end

def is_available(spot)
  spot == spot.downcase ? false : true
end

def where_can_I_park(spots, vehicle)
  spots.map { |row| 
    row.map { |spot|
      if is_available(spot) 
        && size_of(vehicle).include?(spot)
        return [row.index(spot), spots.index(row)]
      end 
    }
  }
  []
end

puts where_can_I_park(
  [
    # COLUMNS ARE X
    # 0    1    2    3    4    5
    ["s", "s", "s", "S", "R", "M"], # 0 ROWS ARE Y
    ["s", "M", "s", "S", "r", "M"], # 1
    ["s", "M", "s", "S", "r", "m"], # 2
    ["S", "r", "s", "m", "r", "M"], # 3
    ["S", "r", "s", "m", "r", "M"], # 4
    ["S", "r", "S", "M", "M", "S"]  # 5
  ],
  "regular"
).inspect

puts where_can_I_park(
  [
    ["M", "M", "M", "M"],
    ["M", "s", "M", "M"],
    ["M", "M", "M", "M"],
    ["M", "M", "r", "M"]
  ],
  "small"
).inspect

puts where_can_I_park(
  [
    ["s", "s", "s", "s", "s", "s"],
    ["s", "m", "s", "S", "r", "s"],
    ["s", "m", "s", "S", "r", "s"],
    ["S", "r", "s", "m", "r", "s"],
    ["S", "r", "s", "m", "R", "s"],
    ["S", "r", "S", "M", "m", "S"]
  ],
  "motorcycle"
).inspect