def iterate_colors(colors)
  colors.map {|color| color}
end
#simple map
def iterate_colors(colors)
  colors.enum_for.to_a # => ["Red", "Green", "Blue"]
  # to_a is a method that returns an array of the enumerable object
  #enum_for is a method that returns an enumerator object
  #<Enumerator: #<Colors:0x0000559b7a001db8>:each>
end

