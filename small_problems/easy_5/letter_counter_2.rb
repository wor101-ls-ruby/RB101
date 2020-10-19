def verify_word(word)
  word.match?(/\W/) ? word.split(/\W/).join : word        # can use word.delete('^A-Az-z') to delete all non-alphabetical characters and return a new string
end


def word_sizes(input_string)
  word_length_hash = {}
  # word_array = input_string.split(' ')
  word_length_array = []
  
  input_string.split(' ').each do |word| 
    verified_word = verify_word(word)  
    word_length_array << verified_word.length 
  end
  
  # word_array.each { |word| word_length_array << word.length }
  
  word_length_array.each do |length|
    next if word_length_hash.has_key?(length)
    word_length_hash[length] = word_length_array.count(length)
  end
  word_length_hash
end

def word_sizes_lesson(words_string)
  counts = Hash.new(0)                  # this is onde instead of counts = {} because error would be thrown when counts[word.size] += 1 is excectuted the first time. Auto returns 0 instead of nil 
  words_string.split.each do |word|
    counts[word.size] += 1              # use += operator 
  end
  counts
end

# **Algorithm**
# - Create a blank hash called word_length_hash
# - Creata a blank array called word_array
# - Creeate a blank array called word_length_array
# - set each element of the word_array equal to one of the words from the input string
# - iterate over each element of word_array
#   - check the length of the individual word
#   - push the length of the string to word_length_array
# - iterate over each element of word_length_array
#   - check to see if lenght already exists as a key in the hash
#   - if it exists go to next element
#   - otherwise add it as a key 
#   - set the value of the key as equal to the number of times that integer appears in the array using #count method



p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
