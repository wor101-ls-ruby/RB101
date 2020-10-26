def leading_substrings(string)
  substrings = []
  chars_array = string.chars

  string.chars.each_index {|index| substrings << chars_array[0..index].join }

  substrings
end

def substrings(string)
  all_substrings = []
  string.length.times do |i|
    all_substrings << leading_substrings(string[i..-1])
  end
  p all_substrings.flatten
end





# **Algorithm**
# - all_substrings array
# - iterate over the characters on the input string
# - for each character, create a string starting with that character and ending with the last character in the original input string
# - pass the new string to the leading_substring method and push the result to the all_substrings array


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]