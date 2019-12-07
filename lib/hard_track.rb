class HardTrack
  class << self
    def elements_cords
      [
        [0, 5000, 0, 100],
        [0, 100, 0, 5000],
        [4900, 5000, 0, 5000],
        [0, 3600, 2900, 3200],
        [0, 3200, 3200, 3800],
        [4200, 5000, 2200, 2500],
        [3800, 5000, 1900, 2200],
        [3200, 5000, 1600, 1900],
        [3000, 5000, 1300, 1600]
      ]
    end

    def draw
      Gosu.draw_rect(0, 0, 5000, 100, Gosu::Color::GREEN)
      Gosu.draw_rect(4900, 0, 100, 5000, Gosu::Color::BLUE)
      Gosu.draw_rect(0, 0, 100, 5000, Gosu::Color::BLUE)
      Gosu.draw_rect(0, 2900, 3600, 300, Gosu::Color::BLUE)
      Gosu.draw_rect(0, 3200, 3200, 600, Gosu::Color::BLUE)
      Gosu.draw_rect(4200, 2200, 800, 300, Gosu::Color::BLUE)
      Gosu.draw_rect(3800, 1900, 1200, 300, Gosu::Color::BLUE)
      Gosu.draw_rect(3200, 1600, 1800, 300, Gosu::Color::BLUE)
      Gosu.draw_rect(3000, 1300, 2000, 300, Gosu::Color::BLUE)
    end
  end
end
