def swap_letters(word_string)
  word_string[0], word_string[-1] = word_string[-1], word_string[0]     # when ruby sees 'a, b = b, a' it effectively creates a temporary array so variables values can be swapped
end
# I am not returning the word_string because i've updated the string in its original memory location


def swap (words_string)
  words_array = words_string.split(' ')

  words_array.each { |word| swap_letters(word) }
  
  words_array.join(' ')
end





p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'