# // Use the value below whenever you need the value of Pi
PI = 3.14159

def sphereVolume(radius)
  radius * radius * radius * 4 / 3 * PI
end

puts (4186 < sphereVolume(10) && sphereVolume(10) < 4189)


def coneVolume(radius, height)
  radius * radius * height / 3 * PI
end

puts (45 < coneVolume(3,5) && coneVolume(3,5) < 49)

# const prismVolume = function (height, width, depth) {
#   // Probably here too!
# }
def prismVolume(height, width, depth)
  height * width * depth
end

puts (prismVolume(3,4,5) == 60)

def totalVolume(solids)
  total = 0
  solids.each do |solid|
    case solid["type"]
      when "sphere"
        total += sphereVolume(solid["radius"])
        
      when "cone"
        total += coneVolume(solid["radius"], solid["height"])
        
      when "prism"
        total += prismVolume(solid["height"], solid["width"], solid["depth"])
        
    end
  end
  total
end

large_sphere = { "type" => "sphere", "radius" => 40 }
small_sphere = { "type" => "sphere", "radius" => 10 }
cone = { "type" => "cone", "radius" => 3, "height" => 5 }

duck = [large_sphere, small_sphere, cone]

puts (272000 < totalVolume(duck) && totalVolume(duck) < 275000)
puts totalVolume(duck)

