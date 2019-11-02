require './test/test_helper'
require './lib/offset'

class OffsetTest < Minitest::Test

  def test_it_exists
    offset = Offset.new("021119")
    assert_instance_of Offset, offset
  end

end
