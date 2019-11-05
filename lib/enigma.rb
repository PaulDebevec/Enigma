require './lib/shift'

class Enigma
  def initialize
    @character_set = ("a".."z").to_a << " "
  end

  def encrypt(message, key = nil, date = nil)
    shift = Shift.new(key, date)
    encrypted_message = message.chars.map.with_index(0) do |character, index|
      offset = get_offset(shift, index)
      get_offset_character(character, offset)
    end
    { encryption: encrypted_message.join(""), key: shift.key.number_key, date: shift.offset.date }
  end

  def decrypt(encrypted_message, key, date)
    shift = Shift.new(key, date)
    decrypted_message = encrypted_message.chars.map.with_index(0) do |character, index|
      offset = get_offset(shift, index)
      get_offset_character(character, -offset)
    end
    { decryption: decrypted_message.join(""), key: shift.key.number_key, date: shift.offset.date }
  end

  def get_offset_character(character, offset)
    if @character_set.include?(character)
      offset_index = @character_set.index(character) + offset
      @character_set.rotate(offset_index).first
    else
      character
    end
  end

  def get_offset(shift, index)
    remainder = index % 4
    return shift.a if remainder == 0
    return shift.b if remainder == 1
    return shift.c if remainder == 2
    return shift.d if remainder == 3
  end
end
