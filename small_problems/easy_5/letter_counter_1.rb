# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.



def word_sizes(input_string)
  word_length_hash = {}
  # word_array = input_string.split(' ')
  word_length_array = []
  
  input_string.split(' ').each { |word| word_length_array << word.length }
  

  
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


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
