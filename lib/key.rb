class Key
  attr_reader :number_key, :a, :b, :c, :d

  def initialize(number_key = nil)
    @number_key = number_key.nil? ? random_key : number_key
    @a = @number_key[0..1]
    @b = @number_key[1..2]
    @c = @number_key[2..3]
    @d = @number_key[3..4]
  end
end
