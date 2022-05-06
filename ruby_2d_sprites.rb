require 'ruby2d'

coin = Sprite.new(
  'coin.png',
  clip_width: 84,
  time: 300,
  loop: true
)

coin.play
boom = Sprite.new(
  'boom.png',
  clip_width: 127,
  time: 75
)
boom.play do
  puts "Animation finished!"
end

hero = Sprite.new(
  'hero.png',
  width: 78,
  height: 99,
  clip_width: 78,
  time: 250,
  animations: {
    walk: 1..2,
    climb: 3..4,
    cheer: 5..6
  }
)
@x = 300
@y = 300

on :key_down do |event|
  case event.key
    when 'left'
      hero.play animation: :walk, loop: true, flip: :horizontal
      @x -= 1
    when 'right'
      hero.play animation: :walk, loop: true
      @x += 1
    when 'up'
      hero.play animation: :climb, loop: true
      @y -= 1
    when 'down'
      hero.play animation: :climb, loop: true, flip: :vertical
      @y += 1
    when 'c'
      hero.play animation: :cheer
      @x += 5
      @y -= 5
  end
end

update do
  hero.x = @x
  hero.y = @y
end

atlas = Sprite.new(
  'atlas.png',
  animations: {
    count: [
      {
        x: 0, y: 0,
        width: 35, height: 41,
        time: 300
      },
      {
        x: 26, y: 46,
        width: 35, height: 38,
        time: 400
      },
      {
        x: 65, y: 10,
        width: 32, height: 41,
        time: 500
      },
      {
        x: 10, y: 99,
        width: 32, height: 38,
        time: 600
      },
      {
        x: 74, y: 80,
        width: 32, height: 38,
        time: 700
      }
    ]
  }
)
atlas.x = 300
atlas.play animation: :count, loop: true
show