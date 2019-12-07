class Track
  class << self
    def elements_cords
      [
        [1800, 2800, 2900, 3000],
        [0, 100, 0, 5000],
        [4900, 5000, 0, 5000]
      ]
    end

    def draw
      Gosu.draw_rect(4900, 0, 100, 5000, Gosu::Color::BLUE)
      Gosu.draw_rect(0, 0, 100, 5000, Gosu::Color::BLUE)
      Gosu.draw_rect(1800, 2900, 1000, 100, Gosu::Color::BLUE)
    end
  end
end
