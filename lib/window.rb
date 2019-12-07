require 'gosu'
require_relative 'car.rb'
require_relative 'track.rb'

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
    Track.draw

    cars.each do |car|
      car.draw
    end    
  end

  private

  attr_reader :cars
end
