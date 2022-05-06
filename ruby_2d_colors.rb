require 'ruby2d'

# # Create a new, green square
# Square.new(color: 'green')

# # Create a square, then set its color later
# s = Square.new
# s.color = 'blue'

# # Use hexadecimal values to set a color
# s.color = '#ff0000'

# # Use red, green, blue, alpha values to set the color
# s.color = [1, 0.5, 0.2, 1]

square = Square.new(x: 10, y: 20, size: 25, color: 'blue', opacity: 0.5)
# square.opacity= 0.8 - doesn't work

show

