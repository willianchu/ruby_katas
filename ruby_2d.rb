# first - sudo apt install libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev
# secondly - gem install ruby2d

require 'ruby2d'

require 'set'

# set title: "Hello Triangle"
# aternative way
# set( { :title => "Hello World!" } )
# set background: 'blue'

#attributes:
# :title	The title of the window. Default: "Ruby 2D"
# :background	The background color of the window. Any valid Ruby 2D Color is acceptable. Default: "black"
# :width	The width of the window in pixels. Default: 640
# :height	The height of the window in pixels. Default: 480
# :viewport_width	The width of the viewport in pixels, the visible part of the window. Default is the width of the window at the time show is called.
# :viewport_height	Same as :viewport_width above, but for setting the height.
# :resizable	Determines if the window can be resized, either true or false. Default: false
# :borderless	Determines if the window has a border, either true or false. Default: false
# :fullscreen	Determines if the window will be shown in fullscreen mode, either true or false. Default: false
# :diagnostics	Prints debugging information to the console, either true or false. This is mostly useful when working on Ruby 2D itself. Default: false

set title: 'Geometric', background: 'navy'

# you can get the attribues of the window
# get :width  # returns `640`, for example
# attribues
#   :window	The window object itself, just in case you want to inspect it.
#   :frames	The number of frames that have been rendered since the start.
#   :fps	The current frame rate expressed in frames per second (a Float).
#   :mouse_x	The x-coordinate position of the mouse, relative to the window.
#   :mouse_y	The y-coordinate position of the mouse, relative to the window.

# window class
# Window.title   # returns "Ruby 2D"
# Window.width   # returns 640
# Window.height  # returns 480

# makes a color triangle
# Triangle.new(
#   x1: 320, y1:  50,
#   x2: 540, y2: 430,
#   x3: 100, y3: 430,
#   color: ['red', 'green', 'blue']
# )


# set a random backgroud color after 60 seconds
# tick = 0

# update do
#   if tick % 60 == 0
#     set background: 'random'
#   end
#   tick += 1
# end


# Closes the window
# t = Time.now

# update do
#   # Close the window after 5 seconds
#   if Time.now - t > 5 then close end
# end

#add and removing objects
# s = Square.new  # a square is created and added to the window
# s.remove  # square is removed...
# s.add     # ...and added back to the window

# Depth
# t = Triangle.new
# s = Square.new
# t.z = 1

# Contains
# s = Square.new(x: 50, y: 50, size: 100)
# s.contains? 75, 75  # returns true
# s.contains? 10, 20  # returns false


# moving square

# Define a square shape.
@square = Square.new(x: 10, y: 20, size: 25, color: 'blue')

# Define the initial speed (and direction).
@x_speed = 0
@y_speed = 0

# Define what happens when a specific key is pressed.
# Each keypress influences on the  movement along the x and y axis.
on :key_down do |event|
  if event.key == 'j'
    @x_speed = -2
    @y_speed = 0
  elsif event.key == 'l'
    @x_speed = 2
    @y_speed = 0
  elsif event.key == 'i'
    @x_speed = 0
    @y_speed = -2
  elsif event.key == 'k'
    @x_speed = 0
    @y_speed = 2
  end
end

update do
  @square.x += @x_speed
  @square.y += @y_speed
end

# open a window
show