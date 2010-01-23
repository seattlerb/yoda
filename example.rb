# bowling_spec.rb

require 'yoda'

class Bowling
  def hit(pins)
  end

  def score
    0
  end
end

Bowling.yoda {
  "score 0 for gutter game".it_will {
    bowling = Bowling.new
    20.times { bowling.hit(0) }

    bowling.score 0.it_is?
    bowling.score 42.it_is_not!
  }
}
