class Adult

  attr_reader :count

  def initialize
    @count = 0
  end

  def consume_an_alcoholic_beverage
    @count += 1
    sober?
  end

  def sober?
    @count <= 2
  end

end
