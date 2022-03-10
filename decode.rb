#!/usr/bin/env ruby

def decode_char(char)
  dictionary = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
    '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
    '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
    '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', '.----' => '1', '..---' => '2',
    '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9',
    '-----' => '0', '.-.-.-' => '.', '--..--' => ',', '..--..' => '?', '.----.' => "'"
  }
  dictionary[char]
end

# puts decode_char(".-") #A

def decode_word(code)
  code.split(' ').map { |char| decode_char(char) }.join
end

# puts decode_word('-- -.--') #MY

def decode(code)
  code.split('   ').map { |word| decode_word(word) }.join(' ')
end

# puts decode('-- -.--   -. .- -- .') #MY NAME
