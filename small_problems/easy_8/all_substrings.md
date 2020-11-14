**Problem**
Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous exercise:

Rules
Explicit
  - Input: string
  - Output: an array of strings
  - return list of all substrings of a string
  - ordered by where in the string the substring begins
  - substrings at a given position should be ordered from shortest to longest
Implicit
  - no whitespace?

**Examples / Test Cases**
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

**Data Structures**
- Input string
- Output array of strings

**Algorithm**
- all_substrings array
- iterate over the characters on the input string
- for each character, create a string starting with that character and ending with the last character in the original input string
- pass the new string to the leading_substring method and push the result to the all_substrings array