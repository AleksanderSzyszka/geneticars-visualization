require 'gosu'

class Car
  ONE_DEGREE_IN_RADIAN = 0.01745
  FORWARD_INCREMENTATION = 1
  attr_reader :angl, :x, :y, :width, :height

  def initialize
    @x = 2000
    @y = 900
    @width = 30
    @height = 30
  end

  def move(angle)
    @x = @x + FORWARD_INCREMENTATION * Math.tan(ONE_DEGREE_IN_RADIAN * angle)
    @y -= FORWARD_INCREMENTATION
  end

  def draw
    Gosu.draw_rect(x, y, width, height, Gosu::Color::RED)
  end
end
