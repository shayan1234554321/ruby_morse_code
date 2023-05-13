def decode_char(morse_char)
  morse_code = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..',
    'E' => '.', 'F' => '..-.', 'G' => '--.', 'H' => '....',
    'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
    'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.',
    'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-',
    'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
    'Y' => '-.--', 'Z' => '--..',
    '0' => '-----', '1' => '.----', '2' => '..---', '3' => '...--',
    '4' => '....-', '5' => '.....', '6' => '-....', '7' => '--...',
    '8' => '---..', '9' => '----.',
    '.' => '.-.-.-', ',' => '--..--', '?' => '..--..', '/' => '-..-.',
    '-' => '-....-', '(' => '-.--.', ')' => '-.--.-', ' ' => '/'
  }

  inverted_morse_code = morse_code.invert
  return inverted_morse_code[morse_char]
end

def decode_word(morse_word)
  morse_chars = morse_word.split(' ')
  decoded = ''
  morse_chars.each do |morse_char|
    decoded += decode_char(morse_char)
  end
  return decoded
end

def decode(morse_code)
  words = morse_code.split('   ')
  decoded = ''
  words.each do |morse_word|
    decoded += decode_word(morse_word) + " "
  end
  return decoded
end

morse_code = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'

print decode(morse_code) # A BOX FULL OF RUBIES
