# Write a method to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

# Example 1:
# Input: ["flower", "flow", "flight"]
# Output: "fl"

# Example 2:
# Input: ["dog", "racecar", "car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.

# Note:
# All given inputs are in lowercase letters a-z.
=begin
**Problem**
Write a method to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".

All given inputs are in lowercase letters a-z.

Rules:
Explicit
  - Input: an Array of strings
  - Output: a STring
  - find the longest common prefix string amongst all the string elements in input array
  - if no commone prefix return ""
  - all inputs are lowercase letters a-z
  

**Examples / Test Cases**
Example 1:
Input: ["flower", "flow", "flight"]
Output: "fl"

Example 2:
Input: ["dog", "racecar", "car"]
Output: ""
Explanation: There is no common prefix among the input strings.

**Data Structures**
- input Array
- output String

**Algorithm**
1. initialize a String variable to hold the longest common prefix
2. iterate over each character of the first element of the input array
  - for reach character check to see if the other first characters of the other elements are equal
  - if so set our longest common prefix equal to that charcter
  - then check to see if the first two characters of the first element are equal to the first 2 characters of every other element, etc, etc
3. return the longest common prefix


=end

def common_prefix(array)
  longest_common_prefix = ''
  first_word = array[0]
  
  stop_index = 0
  
  until stop_index == (first_word.size) do

    if array[1..-1].all? { |word| word[0..stop_index] == first_word[0..stop_index] }
      longest_common_prefix = first_word[0..stop_index]
    end
      
    stop_index += 1
  end
  p longest_common_prefix
  
end




p common_prefix(["flower", "flow", "flight"]) == "fl"
p common_prefix(["dog", "racecar", "car"]) == ""
p common_prefix(["interspecies", "interstellar", "interstate" ]) == "inters"
p common_prefix(["throne", "dungeon"]) == ""
p common_prefix(["throne", "throne"]) == "throne"
