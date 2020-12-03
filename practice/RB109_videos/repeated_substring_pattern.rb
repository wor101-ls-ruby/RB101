#Given a non-empty string check if it can be constructed by taking a sbustring of it and appending multiple copies of the substring together. You may asume the given string consists of lowercase English letters only.

# Example 1:

# Input: 'abab'
# Output: True
# Explanation: It's the substring 'ab' twice

#Example 2:

# Input: 'aba'
# Output: False

def repeated_substring_pattern(string)
  index = 0
  index_stop = (string.length / 2)
  repeated_substring = false
  
  
  loop do
    break if repeated_substring == true || index > index_stop
    substring = string[0..index]
    until substring.length > string.length
      substring += substring
      if substring == string
        repeated_substring = true
        break
      end
    end
    
    index += 1
  end
  repeated_substring
  
end


p repeated_substring_pattern('abab') == true
p repeated_substring_pattern('aba') == false
p repeated_substring_pattern('aabaaba') == false
p repeated_substring_pattern('abaababaab') == true
p repeated_substring_pattern('abcabcabcabc') == true



# things to note:
# strings with lengths that are prime numbers can only have a repeated substring of a single character
# substrings can only be a length that is a multiple of the length of the string