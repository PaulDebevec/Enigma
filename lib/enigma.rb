require './lib/shift'

class Enigma
  def initialize
    @character_set = ("a".."z").to_a << " "
  end
  def get_offset(shift, index)
    remainder = index % 4
    return shift.a if remainder == 0
    return shift.b if remainder == 1
    return shift.c if remainder == 2
    return shift.d if remainder == 3
  end
end
