CHARS = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z'
}.freeze

def decode_char(morse_char)
  CHARS[morse_char].upcase
end



# Test
puts decode_char('-...')
puts decode_word('-- .. -.-. .-. --- ...- . .-. ... .') # MICROVERSE
s1_name = '-... . .-.. .- -.--'
puts decode_word(s1_name) # BELAY
s2_name = '.--- ..- .-.. . ...'
puts decode_message(s2_name) # JULES
ruby = '- .... .. ...   .. ...   .-. ..- -... -.--   .--. .-. --- --. .-. .- -- -- .. -. --.'
puts decode_message(ruby) # THIS IS RUBY PROGRAMMING
