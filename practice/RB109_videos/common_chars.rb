=begin
**Problem**
Given an array of strings made only from lowercase letters, 
return an array of all characters that show up in all strings wtihtin the given array (including duplicates).

For example, if a character occurs 3 times in all strings but not 4 times, you need to include that
character three times in the final answer.


Rules:
Explicit
  - Input: an Array of strings
  - Output: an Array of string characters
  - all characters will be lowercase letters
  - return array includes every character that shows up in every string
  - return duplicates as well (we could have several characters of the same letter in the return array_


**Examples / Test Cases**
p common_chars(["bella", "label", "roller"]) == ["e", "l", "l"]
p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []

**Data Structures**
- input Array of strings
- output Array of string characters


**Algorithm**
1. Initialize an Array variable to be returned
2. Iterate over each character of the first element (string) of the input array
  - create a variable to hold current number of that character in the return array
  - iterate over every element (string) but the first of the input array
    - find the number of characters in the string that match the current character
    - if the number is greater than the current number in the array consider the character included in the string
    - if during any check the character is not inculded DO NOT add it to the return array
    - if the character IS included in every string then add it to the return array
3. Return the return array


=end

def common_chars(array)
  common_characters = []
  
  array[0].chars.each do |char|
    current_amount = common_characters.count(char)
    common_char = true
    
    array[1..-1].each do |string|
      char_count = string.count(char)
      char_count > common_characters.count(char) ? next : common_char = false
    end
    
    common_characters << char if common_char == true  
  end

  
  p common_characters
end



p common_chars(["bella", "label", "roller"]) == ["e", "l", "l"]
p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []