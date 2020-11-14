**Problems**
Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

Rules:
Explicit
  - Input: string
  - Output: string
  - convert number words to digits 
  - number words will be between zero and nine
  - return updated string
Implicit
  - string will always contain number words to convert


**Examples / Test Cases**
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

**Data Structures**
- Input STring
- return string
- A hash to store each number word as a key and the the number digit as value
  { 'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5, 'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9}

**Algorithm**
1. create hash to store words and digits
2. create an array to store converted words
3. iterate over the input string turned to an array
4. if current word is included in the hash then swap it with the hashes value
5. add word to the return array
6. join the return array and return it