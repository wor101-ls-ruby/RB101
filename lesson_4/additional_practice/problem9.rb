# As we have seen previously we can use some built-in string methods to change the case of a string. 
#   A notably missing method is something provided in Rails, but not in Ruby itself...titleize. 
#   This method in Ruby on Rails creates a string that has each word capitalized as it would be in a title. For example, the string:
# Write your own version of the rails titleize implementation.

words = "the flintstones rock"

def titleize(title)
  title.split(' ').each { |word| word.capitalize! }.join(' ') # could have used #map with #capitalize for same effect
end

p titleize(words)