require 'gosu'
require_relative 'track.rb'
require 'pry'

class Car
  ONE_DEGREE_IN_RADIAN = 0.01745
  MOVE_FORCE = 10

  attr_reader :x, :y, :width, :height, :id, :dna, :crashed, :distance

  def initialize(id:, dna:)
    @id = id
    @dna = dna
    @x = 2500
    @y = 4800
    @width = 30
    @height = 30
    @crashed = false
    @distance = 0
  end

  def move(angle, direction)
    return if @crashed

    @x = @x + (MOVE_FORCE * Math.tan(ONE_DEGREE_IN_RADIAN * angle)) * direction
    @y -= MOVE_FORCE
    @distance += MOVE_FORCE
    colision_detection
  end

  def draw
    Gosu.draw_rect(x, y, width, height, Gosu::Color::RED)
  end

  def colision_detection
    @crashed = HardTrack.elements_cords.any? do |cords|
      x > cords[0] && x < cords[1] && y > cords[2] && y < cords[3]
    end
  end
end
