**Problem**
Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. 
Characters that are not alphabetic should be ignored.

Rules:
Explicit
  - Input: string
  - Output: Boolean
  - returns true if all characters in the string are uppercase
  - ignore non-alphabetic characters
Implicit
  - an empty string returns true


**Examples / Test Cases**
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

**Data Structures**


**Algorithm**
1. check input string to see if it equals itself with upcase called on it