require_relative 'candy'
require 'pry'

class Bag

  attr_reader :candies, :taken

  def initialize
    @candies = []
    @taken = []
  end

  def empty?
    candies.count == 0
  end

  def << candy
    @candies << candy
  end

  def count
    candies.count
  end

  def contains?(type)
    candies.all? do |candy|
      type == candy.type
    end
  end

  def grab(type)
    grabbed_candy = candies.find do |candy|
      candy.type == type
    end
    candies.delete(grabbed_candy)
  end

  def take(number)
    number.times do
      taken << candies.pop
    end
    taken
  end

end
