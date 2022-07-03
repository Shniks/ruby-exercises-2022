class Apple

  attr_reader :count

  def initialize
    @count = 0
  end

  def ripe?
    @count > 2
  end

  def wait_a_week
    @count += 1
  end

end
