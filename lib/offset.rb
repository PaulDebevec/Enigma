class Offset
  attr_reader :date

  def initialize(date = nil)
    @date = date.nil? ? transmission_date : date
  end

  def transmission_date
    Time.now.strftime("%d%m%y")
  end
end
