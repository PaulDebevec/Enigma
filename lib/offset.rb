class Offset
  attr_reader :date, :a, :b, :c, :d

  def initialize(date = nil)
    # May initialize without a date and it will add today as the default date
    @date = date.nil? ? transmission_date_generator : date
    @a = date_key_offsets[0].to_i
    @b = date_key_offsets[1].to_i
    @c = date_key_offsets[2].to_i
    @d = date_key_offsets[3].to_i
  end

  # transmission_date_generator generates todays date
  def transmission_date_generator
    Time.now.strftime("%d%m%y")
  end

  # date_key_offsets squares the date and returns the last 4 digits
  def date_key_offsets
    squared_date = (@date.to_i ** 2).to_s
    squared_date[-4..-1]
  end

end
