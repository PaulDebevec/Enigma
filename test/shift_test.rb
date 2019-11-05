require './test/test_helper'
require './lib/shift'

class ShiftTest < Minitest::Test
  def test_it_exists
    shift = Shift.new("42563", "021119")
    assert_instance_of Shift, shift
  end

end
