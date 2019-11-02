class Offset
  attr_reader :date

  def initialize(date = nil)
    @date = date.nil? ? transmission_date : date
  end
end
