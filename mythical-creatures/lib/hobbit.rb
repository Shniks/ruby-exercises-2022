class Hobbit

  attr_reader :name,
              :disposition,
              :age

  def initialize(name, disposition = 'homebody')
    @name = name
    @disposition = disposition
    @age = 0
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    return false if @age < 33
    true
  end

  def old?
    return false if @age < 101
    true
  end

  def has_ring?
    return true if @name.downcase == 'frodo'
    false
  end

  def is_short?
    true
  end

end
