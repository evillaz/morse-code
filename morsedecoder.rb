# frozen_string_literal: true

MORSE_CODE = {
  'A' => '.-',
  'B' => '-...',
  'C' => '-.-.',
  'D' => '-..',
  'E' => '.',
  'F' => '..-.',
  'G' => '--.',
  'H' => '....',
  'I' => '..',
  'J' => '.---',
  'K' => '-.-',
  'L' => '.-..',
  'M' => '--',
  'N' => '-.',
  'O' => '---',
  'P' => '.--.',
  'Q' => '--.-',
  'R' => '.-.',
  'S' => '...',
  'T' => '-',
  'U' => '..-',
  'V' => '...-',
  'W' => '.--',
  'X' => '-..-',
  'Y' => '-.--',
  'Z' => '--..',
  '0' => '-----',
  '1' => '.----',
  '2' => '..---',
  '3' => '...--',
  '4' => '....-',
  '5' => '.....',
  '6' => '-....',
  '7' => '--...',
  '8' => '---..',
  '9' => '----.'
}.freeze

def decode_char(morse_letter)
  MORSE_CODE.key(morse_letter)
end

def decode_word(morse_word)
  chars = morse_word.split
  word = ''
  chars.each do |char|
    word += decode_char(char)
  end
  word
end

def decode(morse)
  words = morse.split('   ')
  sentence = ''
  words.each_with_index do |word, index|
    sentence += decode_word(word)
    sentence += ' ' if index != words.length - 1
  end
  puts sentence
end
decode("      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")