require 'httparty'

class Adapter
  include HTTParty
  base_uri 'http://localhost:3000/'

  def get
    self.class.get('/generate_population')
  end
end
