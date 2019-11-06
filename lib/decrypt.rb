require './lib/enigma'

file_to_decrypt = ARGV[0]
decrypted_file = ARGV[1]
decryption_key = ARGV[2]
date_key = ARGV[3]

message_to_decrypt = File.read(file_to_decrypt)
enigma = Enigma.new
decryption = enigma.decrypt(message_to_decrypt, decryption_key, date_key)
File.open(decrypted_file, "w") {|file| file.write(decryption[:decryption]) }

p "Created '#{decrypted_file}' with the key #{decryption[:key]} and date #{decryption[:date]}"
