class Dragon

  attr_reader :name,
              :color,
              :rider,
              :count

  def initialize(name, color, rider)
    @name = name
    @rider = rider
    @color = color
    @count = 0
  end

  def hungry?
    return true if @count < 3
    return false if @count >= 3
  end

  def eat
    @count += 1
  end

end
