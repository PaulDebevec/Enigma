require './test/test_helper'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def test_it_exists
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_get_offset_character
    enigma = Enigma.new
    actual = enigma.encrypt("hello world", "02715", "040895")
    assert_equal "k", enigma.get_offset_character("h", 3)
    assert_equal "!", enigma.get_offset_character("!", 3)
  end
end
