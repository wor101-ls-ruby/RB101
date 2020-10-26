**Problem**
Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

Rules:
Explicit
  - Input = a string
  - Output = an array of strings
  - return every possible string combination of characters from shortest to longest
Implicit
  - input string will not have any whitespace?

**Examples / Test Cases**
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

**Data Structures**
- input string
- export array of strings

**Algorithm**
- create empty array called substrings
- convert input string to an array of chars
- iterate over the array of chars
- each iteration create a string of chars starting at index of 0 and going up to the current index
- push the string to the substrings
- return substrings