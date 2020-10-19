**Problem**
Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

Rules:
Explicit
  - Input: string
  - Output: hash
  - input string contains one ore more words
  - each word is separated by whitespace
  - any string of characters that does not include whitespace is considered a word
Implicit
  - hash key is an integer representing the size of word
  - hash value is an integer representing the number of words of the keys size
  - a string of only whitespace or of nothing returns an empty hash
  - Order of hash does not matter

**Examples / Test Cases**
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

**Data Structures**
- Input String will consist of any characters 
- Output Hash { length_of_word => number_of_words, length_of_word => number_of_words, length_of_word => number_of_words }
- Array where each element is a string representing one word
- Array where each element is an integer representing the length of the string

**Algorithm**
- Create a blank hash called word_length_hash
- Creata a blank array called word_array
- Creeate a blank array called word_length_array
- set each element of the word_array equal to one of the words from the input string
- iterate over each element of word_array
  - check the length of the individual word
  - push the length of the string to word_length_array
- iterate over each element of word_length_array
  - check to see if lenght already exists as a key in the hash
  - if it exists go to next element
  - otherwise add it as a key 
  - set the value of the key as equal to the number of times that integer appears in the array using #count method