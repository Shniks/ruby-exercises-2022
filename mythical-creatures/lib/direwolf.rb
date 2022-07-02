require './lib/stark'

class Direwolf

  attr_reader :name, :home, :size, :starks_to_protect, :hunts_white_walkers

  def initialize(name, home = 'Beyond the Wall', size = 'Massive')
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
    @hunts_white_walkers = true
  end

  def protects(stark)
    protection_numbers(stark)
    stark.safe = true
    @hunts_white_walkers = false
  end

  def protection_numbers(stark)
    if @starks_to_protect.count < 2
      starks_to_protect << stark if home == stark.location
    end
  end

  def hunts_white_walkers?
    @hunts_white_walkers
  end

  def leaves(stark)
    stark.safe = false
    @starks_to_protect = []
  end

end
