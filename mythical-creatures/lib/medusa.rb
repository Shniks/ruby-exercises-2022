require './lib/person'
require 'pry'

class Medusa

  attr_reader :name,
              :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(person)
    statues.shift if statues.count >= 3
    statues << person
    person.count += 1
  end

end
