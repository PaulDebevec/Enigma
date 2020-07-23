# Overview
This was the final project for Module 1 at [Turing School of Software & Design](https://turing.io/). The purpose of this project was to display an efficiency in Ruby, OOP, and demonstrate an understanding of version control using GitHub. This project, Enigma, is modeled after the encryption device used in WW2, which was cracked by Alan Turing in 1941.

# Usage
The Enigma program can be run from the command line. Clone the repo and navigate to the root directory. To encrypt, use the following syntax, where the first argument is the file containing the text to be encrypted and the second argument is the name of the file to create which will contain the encrypted text.

`ruby ./lib/encrypt.rb message.txt encrypted.txt`

To decrypt, use the following syntax, similar to the above but with a third argument which is the random five-digit number used to encrypt the message (take note of it when encrypting) and the fourth argument is the date on which the message was encrypted in DDMMYY format:

`ruby ./lib/decrypt.rb encrypted.txt decrypted.txt 12345 061119`

To crack an encrypted message without knowing the key, use the following syntax:

`ruby ./lib/crack.rb encrypted.txt cracked.txt 061119`
