require './test/test_helper'
require './lib/offset'

class OffsetTest < Minitest::Test

  def test_it_exists
    offset = Offset.new("021119")
    assert_instance_of Offset, offset
  end

  def test_it_initializes
    offset = Offset.new("021119")
    assert_equal "021119", offset.date
    assert_equal "2", offset.a
    assert_equal "1", offset.b
    assert_equal "6", offset.c
    assert_equal "1", offset.d
  end

  def test_initialize_default_transmission_date
    date = Time.now.strftime("%d%m%y")
    offset = Offset.new
    assert_equal date, offset.date
    assert_equal date, offset.transmission_date
  end

  def test_date_key_offsets
    offset = Offset.new("021119")
    assert_equal "2161", offset.date_key_offsets
  end
end
