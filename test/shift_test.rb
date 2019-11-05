require './test/test_helper'
require './lib/shift'

class ShiftTest < Minitest::Test
  def test_it_exists
    shift = Shift.new("42563", "021119")
    assert_instance_of Shift, shift
  end

  def test_initialize
    shift = Shift.new("42563", "021119")
    assert_equal 44, shift.a
    assert_equal 26, shift.b
    assert_equal 62, shift.c
    assert_equal 64, shift.d
  end
end
