# reverse_it_1.rb

# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

def reverse_sentence(string)
  # first split the string into an array where each word is an element
  sentence_array = string.split(" ")
  # second reverse the order
  sentence_array.reverse!
  # third is rejoin the strings into one and save to a new string to return
  reversed_string = sentence_array.join(" ")

  return reversed_string
  
end

def reverse_sentence_lesson(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence("Hello there good sir") 

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
