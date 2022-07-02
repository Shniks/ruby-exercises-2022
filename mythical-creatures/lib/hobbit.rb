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
    return true if @age >= 33
  end

  def old?
    return false if @age < 101
    return true if @age >= 101
  end

  def has_ring?
    return true if @name.downcase == 'frodo'
    return false if @name.downcase != 'frodo'
  end

  def is_short?
    true
  end

end
