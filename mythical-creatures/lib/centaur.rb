class Centaur

  attr_reader :name, :breed, :cranky, :standing, :count, :shoot

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @count = 0
    @shoot = 'Twang!!!'
  end

  def shoot
    @count += 1
    return "NO!" if cranky? == true
    shoot 
  end

  def run
    @count += 1
    return "NO!" if cranky? == true
    return 'Clop clop clop clop!' if cranky? == false
  end

  def cranky?
    return true if @count.odd?
    false
  end

  def standing?
    standing
  end






end
