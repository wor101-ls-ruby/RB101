**Problem**
Write a method that takes a string argument and returns a new string that contains the value of the original string with all 
consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

Rules:
Explicit
  - Input: string
  - Output: string
  - cannot use String#squeeze or String#squeeze! methods
  - consecutive duplicate characters must be replaced with single character
Implicit
  - does case matter? Per the examples all strings are lowercase
  - a single character string should retun itself
  - an empty string should return an empty string
  - Does white space count as characters when checking duplicates?
  - At least one character of white space should be preserved in return string

**Examples / Test Cases**
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

**Data Structures**
- Input string
- Output string
- An Empty array

**Algorithm**
- initiate an empty Array called chars_array
- iterate over each character of the input string
  - add the character to the empty array unless it is the same character as the last element of the array
- rejoin all the characters of the once empty array and return the value
