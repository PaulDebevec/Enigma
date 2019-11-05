require './lib/key'
require './lib/offset'

class Shift
  attr_reader :a, :b, :c, :d, :key, :offset

  def initialize(key, date)
    @key = Key.new(key)
    @offset = Offset.new(date)
    @a = @key.a + @offset.a
    @b = @key.b + @offset.b
    @c = @key.c + @offset.c
    @d = @key.d + @offset.d
  end
end
