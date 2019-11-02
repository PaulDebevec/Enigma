require './test/test_helper'
require './lib/key'

class KeyTest < Minitest::Test
  def test_it_exists
    key = Key.new("42563")
    assert_instance_of Key, key
  end

  def test_it_initializes
    key = Key.new("42563")
    assert_equal "42563", key.number_key
    assert_equal "42", key.a
    assert_equal "25", key.b
    assert_equal "56", key.c
    assert_equal "63", key.d
  end
end
