class Key
  #can we remove number_key from attr_reader?
  attr_reader :number_key, :a, :b, :c, :d

  def initialize(number_key = nil)
    # May initialize with a randomly generated key. Otherwise, generates key.
    @number_key = number_key.nil? ? random_key_generator : number_key
    @a = @number_key[0..1].to_i
    @b = @number_key[1..2].to_i
    @c = @number_key[2..3].to_i
    @d = @number_key[3..4].to_i
  end

  # Returns a randomly generated 5 digit number
  def random_key_generator
    rand.to_s[2..6]
  end
end
