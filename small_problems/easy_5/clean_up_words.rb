
def cleanup(original_string)
  new_string = original_string.gsub(/\W/, ' ').squeeze(' ')
  # array_of_characters = new_string.split(' ')     # could have avoided all of the below by using #squeeze(' ')
  
  # new_string = array_of_characters. join(' ')
  
  # new_string.prepend(' ') if original_string[0].match?(/\W/)        
  # new_string << (' ') if original_string[-1].match?(/\W/)

  # new_string
end


ALPHABET = ('a'..'z').to_a

def manual_cleanup(original_string)
  new_string = ''
  original_string.each_char do |char|
    if ALPHABET.include?(char)
      new_string << char
    else
      new_string << ' ' unless new_string[-1] == ' '
    end
  end
  new_string
end








# **Algorithm**
# - creat variable called new_string
# - use #gsub method with regexp to swap out all non-alphanumeric characters with whitespace
# - use #split method to split string into array delineated by whitespace
# - use #join method to rejoin the string and include whitespace between all elements
# - if original string begins with non-alphanumeric character  prepend new_string with whitespace
# - if original string ends with non-alphanumeric character append new_string with whitespace
# - return new_string

p cleanup("---what's my +*& line?") == ' what s my line '
p manual_cleanup("---what's my +*& line?") == ' what s my line '