=begin
**Problem**
Find the length of the longest substring in the given string that is the same in reverse.

As an example, if the input was "I like racecars that go fast", the substring (racecar) length would be 7.

If the length of the input string is 0, return value must be 0.

Rules:
Explicit
  - Input: a String
  - Output: an Integer
  - find the length of the longest substring that is a palindrome
  - if string lenght is 0 then return 0
  - if only 1 character return 1
  - no whitespace?

**Examples / Test Cases**
Example:
"a" -> 1
"aab" -> 2
"abcde" -> 1
"zzbaabcd" -> 4


**Data Structures**
- input String
- output Integer

**Algorithm**
1. initalize a variable called substring_palindromes
2. return 0 if input_string length equals 0 
3. return 1 if the input_string length equals 1
4. create a range from 0 up to but not including the size of the input_string
5. iterate through range using the current integer as index on input_string
6. creae variable called stop index and set to index + 1
6. creata a loop that goes until stop_index reacheds the end of the input_string
  - check to see if the characters from index to stop_index are equal to themselves if reversed
  - if so add them to the substring_palindromes array
7. find the the largest string in the substring_palindromes and return it (return 1 if empty)

=end

def longest_palindrome(input_string)
  substring_palindromes = []
  return 0 if input_string.size == 0
  return 1 if input_string.size == 1
  
  (0...input_string.size).each do |index|
    stop_index = index + 1
    until stop_index == (input_string.size)
      current_substring = input_string[index..stop_index]
      if current_substring == current_substring.reverse
        substring_palindromes << current_substring
      end
      stop_index += 1
    end    
  end
  
  p substring_palindromes.max_by { |palindrome| palindrome.length }.size

end






p longest_palindrome("a") == 1
p longest_palindrome("aa") == 2
p longest_palindrome("baa") == 2
p longest_palindrome("aab") == 2
p longest_palindrome("baabcd") == 4
p longest_palindrome("baablkj12345432133d") == 9