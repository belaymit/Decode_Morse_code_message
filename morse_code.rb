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

def decode_word(morse_word)
  word = ''
  word_array = morse_word
  word_array.split.each { |i| word += decode_char(i) }
  word
end

def decode_message(morse_message)
  message_array = morse_message.split('   ')
  message = ''
  message_array.each { |i| message += "#{decode_word(i)} " }
  message
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
old_bottle = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
puts decode_message(old_bottle) # A BOX FULL OF RUBIES
