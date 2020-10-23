def penultimate(string)
  p string.split[-2]
end

def middleword(string)
  confirmed_words = string.split.select { |x| x.match?(/[[:alpha:]]/) }
  p middleword = confirmed_words[confirmed_words.length / 2]
end




# **Algorithm**
# - Create new array called words
# - Set array words to equal the input string split by whitespace
# - return the next to last element of words array

# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'


p middleword('the greatest of all time') == 'of'
p middleword(' the greatest $%(@ #$#$ of all time') == 'of'