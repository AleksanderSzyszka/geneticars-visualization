class Track
  class << self
    def elements_cords
      [
        [0, 3600, 2900, 3200],
        [0, 100, 0, 5000],
        [4900, 5000, 0, 5000],
        [0, 5000, 0, 100]
      ]
    end

    def draw
      Gosu.draw_rect(0, 2900, 3600, 300, Gosu::Color::BLUE)
      Gosu.draw_rect(4900, 0, 100, 5000, Gosu::Color::BLUE)
      Gosu.draw_rect(0, 0, 100, 5000, Gosu::Color::BLUE)
      Gosu.draw_rect(0, 0, 5000, 100, Gosu::Color::GREEN)
    end
  end
end
