require_relative('candy')

class Bag

  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    candies.empty?
  end

  def << candy
    candies << candy
  end

  def count
    candies.count
  end

  def contains?(type)
    candies.any? do |candy|
      type == candy.type
    end
  end

end
