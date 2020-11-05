**Problem**
In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. 
Now we want to go one step further.

Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, 
one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

Rules: 
Explicit
  - Input: String
  - Output: Hash
  - hash will have 3 key-value pairs
  - one key value pair is percentage of lowercase letters
  - one key value pair is percentage of uppercase letters
  - one key value pair is percentage of non lower or uppercase letters
  - assume string alwasy has at least one character
Implicit
  - White space counts towards character count
  - percentage should be represented as float if thier is a remainder
  - if no remainder, it should be an integer


**Examples / Test Cases**
letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

**Data Structures**
- Input string
- output hash { lowercase: 37.5, uppercase: 37.5, neither: 25 }

**Algorthim**
1. create hash with keys lowercase:, uppercase:, and neither:
2. Count number of lowercase characters and divide by string length for percentage 
3. set value of lowercase: to percentage
4. Repeat steps 2-3 for uppercase and neither
5. Return hash