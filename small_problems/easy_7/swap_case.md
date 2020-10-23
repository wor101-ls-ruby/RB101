**Problem**
Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, 
and every lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

Rules:
Explicit
  - Input: string
  - Output: string
  - Cannot use String#swapcase method
  - Each uppercase letter of the original string should be replaced with its lowercase version
  - Each lowercase letter of the original string should be replaced with its uppercase version
Implicit
  - whitespace should be preserved
  - there are no non-alphabetical characters besides whitespace?


**Examples / Test Cases**
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'


**Data Structures**
- Input string
- Output string
- Array of characters

**Algorithm**
- Create Array named chars 
- Set each element of chars to a single character of the input string using the #chars method
- iterate over the chars array use #map as we want to transform the array
  - check each character to see if it is uppercase
  - if it is uppercase, use the downcase method on it to 
  - check if the character is lowercase
  - if it is lowercase use the uppercase method on it
- rejoin the updated array into a string
- return updated string