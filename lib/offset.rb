class Offset
  attr_reader :date

  def initialize(date = nil)
    @date = date.nil? ? transmission_date : date
  end

  def transmission_date
    Time.now.strftime("%d%m%y")
  end

  def date_key_offsets
    squared_date = (@date.to_i ** 2).to_s # => 2161
    squared_date[-4..-1]
  end

end
