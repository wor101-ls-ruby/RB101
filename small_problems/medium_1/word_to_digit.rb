WORD_DIGIT =   { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5',
                 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9' }

def word_to_digit(input_string)

  result_array = input_string.split.map do |word|
    non_word_char = word.index(/\W/)
    
    
    if WORD_DIGIT.has_key?(word.gsub(/\W/,''))
      WORD_DIGIT[word.gsub(/\W/,'')] + word.gsub(/\w/,'')
    else
      word
    end
  end
  p result_array.join(' ')
end



  p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'


# **Algorithm**
# 1. create hash to store words and digits
# 2. create an array to store converted words
# 3. iterate over the input string turned to an array
# 4. if current word is included in the hash then swap it with the hashes value
# 5. add word to the return array
# 6. join the return array and return it