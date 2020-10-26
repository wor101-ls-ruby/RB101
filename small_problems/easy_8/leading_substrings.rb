def leading_substrings(string)
  substrings = []
  chars_array = string.chars

  string.chars.each_index {|index| substrings << chars_array[0..index].join }

  substrings
end


# **Algorithm**
# - create empty array called substrings
# - convert input string to an array of chars
# - iterate over the array of chars
# - each iteration create a string of chars starting at index of 0 and going up to the current index
# - push the string to the substrings
# - return substrings


p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']