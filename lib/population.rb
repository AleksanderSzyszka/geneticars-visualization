require_relative 'adapter'
require 'pry'

class Population
  class << self
    def fetch
      population = Adapter.new.get
      population.each_with_object([]) do |attributes, cars|
        cars << Car.new(id: attributes['id'], dna: attributes['dna'])
      end
    end
  end
end
