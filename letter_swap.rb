def swap_letters(word_string)
  # first_letter = word_string[0]
  # last_letter = word_string[-1]
  # word_string[-1] = first_letter
  # word_string[0] = last_letter
  word_string[0], word_string[-1] = word_string[-1], word_string[0]
end


# **Algorithm**
# 1. Create variable first_letter and set it equal to word_string[0]
# 2. Create variable last_letter and set it equal to word_string[-1]
# 3. set string[-1] equal to first_letter
# 4. set string[0] = last_letter
# 5. return string


def swap (words_string)
  words_array = words_string.split(' ')

  words_array.each { |word| swap_letters(word) }
  
  words_array.join(' ')
end


# **Algorithm**
# 1. Create an array called words_array2. 
# 2. Set words_array equal to the input string split into words using .split(' ')
# 3. Iterate over the words_array and switch first and last letter for each word in swap_letters() method
# 4. rejoin the modified words_array using .join(' ')
# 5. return words_array




p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'