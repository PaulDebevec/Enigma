require './test/test_helper'
require './lib/key'

class KeyTest < Minitest::Test
  def test_it_exists
    key = Key.new("42563")
    assert_instance_of Key, key
  end
end
