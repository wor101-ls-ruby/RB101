**Problem**
Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

Rules:
Explicit
  - Input: a non-empty String
  - Output: a String of one or two characters
  - return the middle character of the input string
  - if input string is of odd length return one character
  - if input string is of even length return two characters
Implicit
  - white space counts

**Examples / Test Cases**
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

**Data Structures**
- Input string
- Output string

**Algorithm**
1. determine if lenght of input string is even or odd
2. if odd divide length by 2 and return character at that element location
3. if even divide length by 2 and return character at the element location and the next