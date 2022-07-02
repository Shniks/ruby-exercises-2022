class Werewolf

  attr_reader :name,
              :location,
              :human,
              :count,
              :hungry

  def initialize(name, location = '')
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
    @count = 0
  end

  def human?
    human
  end

  def wolf?
    @wolf
  end

  def change!
    switch
    @count += 1
  end

  def switch
    if count.even?
      @human = false
      @wolf = true
    else
      @human = true
      @wolf = false
    end
  end

  def hungry?
    return true if @wolf == true
    false
  end

end
