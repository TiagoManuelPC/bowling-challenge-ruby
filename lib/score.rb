class Score
  attr_accessor :rolls
  def initialize
    self.rolls = []
  end

  def roll(pins)
    self.rolls << pins
  end

  def result
    score = 0
    index = 0
    10.times do
      if self.rolls[index] + self.rolls[index + 1] == 10
        score += self.rolls[index] + self.rolls[index + 1] + self.rolls[index + 2]
      else
        score += self.rolls[index] + self.rolls[index + 1]
      end
      index += 2
    end
    score
  end

end