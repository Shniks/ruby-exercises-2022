class Centaur

  attr_reader :name, :breed, :count, :standing

  def initialize(name, breed)
    @name = name
    @breed = breed
    @count = 0
    @standing = true
  end

  def shoot
    @count += 1
    return 'Twang!!!' if cranky? == false
    return 'NO!' if cranky? == true
  end

  def run
    @count += 1
    return 'NO!' if cranky? == true
    return 'Clop clop clop clop!' if cranky? == false
  end

  def cranky?
    count >= 3
  end

  def standing?
    standing
  end

  def sleep
    @count = 0
    'NO!'
  end

  def lay_down
    @standing = false
    sleep
    laying?
    @count += 2
  end

  def laying?
    true
  end

  def stand_up
    @standing = true
    @count = 0
  end

end
