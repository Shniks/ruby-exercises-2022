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
    if @count < 3
      return true
    else
      return false
    end
  end

  def eat
    @count += 1
  end

end
