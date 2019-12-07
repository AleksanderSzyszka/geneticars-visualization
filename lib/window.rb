require 'gosu'
require_relative 'car.rb'

class Window < Gosu::Window
  def initialize
    super 4000, 2000
    self.caption = 'Geneticars'
    @cars = [Car.new]
  end
  
  def update
    cars.each do |car|
      car.move(-10)
    end
  end
  
  def draw
    cars.each do |car|
      car.draw
    end
    Gosu.draw_rect(0, 0, 1000, 1000, Gosu::Color::BLUE)
  end

  private

  attr_reader :cars
end
