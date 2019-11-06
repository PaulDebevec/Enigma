require './lib/enigma'

input_file = ARGV[0]
output_file = ARGV[1]
date = ARGV[2]

message_to_crack = File.read(input_file)
enigma = Enigma.new
decryption = enigma.crack(message_to_crack, date)
File.open(output_file, "w") {|file| file.write(decryption[:decryption]) }

p "Created '#{output_file}' with the key #{decryption[:key]} and date #{decryption[:date]}"
