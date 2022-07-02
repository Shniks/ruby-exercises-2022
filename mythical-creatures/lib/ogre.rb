require './lib/human'

class Ogre

  attr_reader :name, :home, :swings, :encounter_counter

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    @encounter_counter += 1
    human.encounter_counter += 1
    does_human_notice_ogre(human)
  end

  def does_human_notice_ogre(human)
    if human.notices_ogre? == true
      @swings += 1
    end
  end

  def swing_at(human)
    @swings += 1
  end

  def apologize(human)
    human.encounter_counter += 1
  end

end
