require 'httparty'

class Adapter
  include HTTParty
  base_uri 'http://localhost:3000/'

  def generate_population
    self.class.get('/generate_population')
  end

  def crossover(data)
    self.class.post('/crossover', body: data)
  end
end
