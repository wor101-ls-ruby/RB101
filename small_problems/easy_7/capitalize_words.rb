def word_cap(string)
 p string.split(' ').each { |word| word.capitalize!}.join(' ')
end

def word_cap(words)
  words.split.map(&:capitalize).join(' ')   # this uses (&:method_name) shorthand notation which equals { |item| item.method_name }
end

def word_cap_hard(string)
  words = string.split
  
  result = words.map do |word|
            word = word[0].capitalize + word[1..-1].downcase
            p word
  end
  # result = words.map do |word|
  #   next if word == ' '
  #   word_array = word.chars
  #       word_array[0].upcase!
  #   ((word_array.length) - 1). times do |i|
  #     word_array[i + 1].downcase!
  #   end
  #   word_array.join
  # end
p result.join(' ')
  
end



# **Algorithm**
# - split input string into an array of words 
# - use #capitalize! on each word
# - rejoin the array into a string
# - return the new string



# p word_cap('four score and seven') == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


p word_cap_hard('four score and seven') == 'Four Score And Seven'
p word_cap_hard('the javaScript language') == 'The Javascript Language'
p word_cap_hard('this is a "quoted" word') == 'This Is A "quoted" Word'