require_relative 'costume'
require_relative 'bag'

class TrickOrTreater

  attr_reader :costume, :bag, :total_sugar

  def initialize(costume)
    @costume = costume
    @bag = []
    @total_sugar = 0
  end

  def dressed_up_as
    costume.style
  end

  def empty?
    bag
  end

  def has_candy?
    candy_count > 0
  end

  def candy_count
    bag.count
  end

  def eat
    @total_sugar += bag.last.sugar
    bag.pop
    total_sugar
  end

  def sugar_level
    total_sugar
  end

end
