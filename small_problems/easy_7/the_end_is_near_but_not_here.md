**Problem**
Write a method that returns the next to last word in the String passed to it as an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.

Rules:
Explicit
  - Input: string
  - Output: string
  - Input string will consist of at least 2 words
  - words are any sequence of non-whitespace characters
  - return the next to last word in a string passed to it
Implicit


**Examples / Test Cases**
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

**Data Structures**
- Input string
- Output string
- Array of words
- 
**Algorithm**
- Create new array called words
- Set array words to equal the input string split by whitespace
- return the next to last element of words array