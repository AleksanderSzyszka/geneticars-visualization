require_relative 'adapter'
require 'pry'

class Population
  class << self
    def fetch
      population = Adapter.new.generate_population
      population.each_with_object([]) do |attributes, cars|
        cars << Car.new(id: attributes['id'], dna: attributes['dna'])
      end
    end

    def generate_new_population(cars)
      data = cars.map { |car| { id: car.id, distance: car.distance }}
      results = Adapter.new.crossover(data.to_json)
      results.each_with_object([]) do |attributes, cars|
        cars << Car.new(id: attributes['id'], dna: attributes['dna'])
      end
    end
  end
end
