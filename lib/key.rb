class Key
  #can we remove number_key from attr_reader?
  attr_reader :number_key, :a, :b, :c, :d

  def initialize(number_key = nil)
    @number_key = number_key.nil? ? random_key : number_key
    @a = @number_key[0..1].to_i
    @b = @number_key[1..2].to_i
    @c = @number_key[2..3].to_i
    @d = @number_key[3..4].to_i
  end

  def random_key
    rand.to_s[2..6]
  end
end
