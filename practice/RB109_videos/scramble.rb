=begin
**Problem**
Write function scramble(str1, str2) that returns true if a portion of str1 characters
can be rearranged to match str2, otherwise return false.

Only lower case letters will be used (a-z). No punctuation or digits will be included.

Rules:
Explicit
  - Input: two Strings (str1, str2)
  - Output: a Boolean
  - return true if all characters in str2 exist in string1
  - if multiple of the same character in str2 then str1 must have the same or more
  - all letters are lower case 
  - only a-z characters will be used

**Examples / Test Cases**
For example:
str1 is 'rkqodlw' and str2 is 'world' the output should return true.
str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' should return true.
str1 is 'katas' and str2 is 'steak' should return false.


**Data Structures**
- input Strings (str1, str2)
- output Boolean (match)



**Algorithm**
1. initialzie a Boolean variable named match and set to true
2. iteratte over str2
  - for each character check to see if it is included in str1
  - if included check to see if str1 has same or greater count of the character as str2
  - if so go to next character
  - else set match to false and break
3. return match


=end

def scramble(str1, str2)
  match = true
  
  str2.chars.each { |char| str1.include?(char) && str1.count(char) >= str2.count(char) ? next : match = false }

  match
end




p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true