**Problem**
Write a method that takes a string, and returns a new string in which every character is doubled.

Rules:
Explicit
  - Input: a String
  - Output: a String
  - double every character in the input string 
Implicit
  - string can contain white spaces and non-alphanumeric characters
  - white space should be doubled
  - a blank string should return a blank string

**Examples / Test Cases**
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

**Data Structures**
- Input String
- Output String

**Algorithm**
- iterate over each character of the input string
- push each character to the output string twice
- return the output string
