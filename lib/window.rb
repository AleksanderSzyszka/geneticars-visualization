require 'gosu'
require_relative 'car.rb'
require_relative 'track.rb'
require_relative 'population.rb'
require 'pry'

class Window < Gosu::Window
  def initialize
    super 4000, 2000
    self.caption = 'Geneticars'
    @cars = Population.fetch
    @simulationTicker = 0
  end
  
  def update
    @simulationTicker += 1
    puts 'FINITO' if @simulationTicker >= 998

    cars.each do |car|
      chromosome = car.dna[@simulationTicker]
      angle = convert_to_angle(chromosome)
      direction = chromosome > 0 ? 1 : -1
      car.move(angle, direction)
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

  def convert_to_angle(value)
    value = value.abs
    return 80 if value > 0.5
    return 60 if value > 0.3
    return 0
  end
end
