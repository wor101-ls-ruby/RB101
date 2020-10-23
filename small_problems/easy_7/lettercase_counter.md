**Problem**
Write a method that takes a string, and then returns a hash that contains 3 entries: 
one represents the number of characters in the string that are lowercase letters, one 
the number of characters that are uppercase letters, and one the number of characters that are neither.

Rules:
Explicit
  - Input: a string
  - Output: a Hash with 3 entries
  - one entry in the hash represents # of lowercase characters
  - one entry in the hash represents # of uppercase characters
  - one entry in the hash represents # of characters that are neither uppercase or lowercasse 
Implicit
  - string can cntain whitespace and non-alphanumeric characters
  - an empty string should return 0 for all values
  - the hash will use keys ( lowercase: , uppercase: , neither: )

**Examples / Test Cases**

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }


**Data Structures**
- Input string
- Output hash with 3 entries: { lowercase: 5, uppercase: 1, neither: 4 }
- 

**Algorithm**
- Create new Array variable called chars 
- Create new Hash = ( lowercase: 0, upppercase: 0, neither: 0)
- Create new Integer variable called lowercase and set to 0
- Create new Integer variable called uppercase and set to 0
- Create new Integer variable called neither and set to 0
- splilt the input string and set chars equal to the resulting array
- Iterate over chars using #each
  - use #match? with regexp to check if element is uppercase, lowercase or neither
  - for each match update hash value for the related key by += 1
- return hash