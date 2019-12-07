class Track
  class << self
    def elements_cords
      [
        [1200, 3700, 900, 1000],
        [0, 100, 0, 2000],
        [3900, 4000, 0, 2000]
      ]
    end

    def draw
      Gosu.draw_rect(3900, 0, 100, 2000, Gosu::Color::BLUE)
      Gosu.draw_rect(0, 0, 100, 2000, Gosu::Color::BLUE)
      Gosu.draw_rect(1200, 900, 1500, 100, Gosu::Color::BLUE)
    end
  end
end
