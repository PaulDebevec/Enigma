require './lib/shift'

class Enigma
  def initialize
    @character_set = ("a".."z").to_a << " "
  end
end
