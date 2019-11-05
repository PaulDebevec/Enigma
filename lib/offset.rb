class Offset
  attr_reader :date, :a, :b, :c, :d

  def initialize(date = nil)
    @date = date.nil? ? transmission_date : date
    @a = date_key_offsets[0].to_i
    @b = date_key_offsets[1].to_i
    @c = date_key_offsets[2].to_i
    @d = date_key_offsets[3].to_i
  end

  def transmission_date
    Time.now.strftime("%d%m%y")
  end

  def date_key_offsets
    squared_date = (@date.to_i ** 2).to_s
    squared_date[-4..-1]
  end

end
