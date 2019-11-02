class Offset
  attr_reader :date, :a, :b, :c, :d

  def initialize(date = nil)
    @date = date.nil? ? transmission_date : date
    @a = date_key_offsets[0]
    @b = date_key_offsets[1]
    @c = date_key_offsets[2]
    @d = date_key_offsets[3]
  end

  def transmission_date
    Time.now.strftime("%d%m%y")
  end

  def date_key_offsets
    squared_date = (@date.to_i ** 2).to_s # => 2161
    squared_date[-4..-1]
  end

end
