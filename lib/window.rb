require 'gosu'
require_relative 'car.rb'
require_relative 'track.rb'
require_relative 'population.rb'
require 'pry'

class Window < Gosu::Window
  def initialize
    super 5000, 5000
    self.caption = 'Geneticars'
    @cars = Population.fetch
    @simulationTicker = 0
  end
  
  def update
    @simulationTicker += 1
    if finito?
      @cars = Population.generate_new_population(cars)
      @simulationTicker = 1
    end

    puts "TICKER #{@simulationTicker}"
    cars.each do |car|
      chromosome = car.dna[@simulationTicker]
      angle = chromosome.abs
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

  def finito?
    cars.all? { |car| car.crashed } || @simulationTicker == 999
  end
end
