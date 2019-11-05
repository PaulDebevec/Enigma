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

  def test_it_encrypts
    enigma = Enigma.new
    actual = enigma.encrypt("hello world", "02715", "040895")
    expected = { encryption: "keder ohulw", key: "02715", date: "040895" }
    assert_equal expected, actual
  end

  def test_it_decrypts
    enigma = Enigma.new
    actual = enigma.decrypt("keder ohulw", "02715", "040895")
    expected = { decryption: "hello world", key: "02715", date: "040895" }
    assert_equal expected, actual
  end

  def test_crack_method
    enigma = Enigma.new
    actual = enigma.crack("vjqtbeaweqihssi", "291018")
    expected = { decryption: "hello world end", date: "291018", key: "08304" }
    assert_equal expected, actual
  end
end
