**Problem**
Write a method that takes a String as an argument, and returns a new String that contains the 
original value using a staggered capitalization scheme in which every other character is capitalized, 
and the remaining characters are lowercase. Characters that are not letters should not be changed, 
but count as characters when switching between upper and lowercase.

Rules:
Explicit
  - Input: String
  - Output: String
  - Every other letter in the output string must be capitalized
  - non-letter characters should remain unchanged
  - non-letter characters count as characters in terms of switching between upper and lowercase
Implicit
  - the first character of the return string should be capitalized

**Examples / Test Cases**
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'


**Data Structures**
- Input String
- Output String
- Array of characters
- 
**Algorithm**
- Create a new array named chars
- Set each element of chars equal to a single character of the input string
- iterate over chars using #map to return a transformed array
  - If index location of current character is even then upcase
  - Else downcase
- return transformed array